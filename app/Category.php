<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Intervention\Image\ImageManager;
use Matriphe\Imageupload\Imageupload;
use App\Image;
use Illuminate\Http\UploadedFile;
use File;
use URL;

class Category extends Model {

    use LogsActivity;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'categories';

    /**
     * The database primary key value.
     *
     * @var string
     */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['parent_id', 'title', 'image', 'order', 'slug'];

    public static function create($param) {
        if (isset($param['image']) && $param['image'] instanceof UploadedFile) {
            $imageManager = new Imageupload(new ImageManager);
            $imageId = $imageManager->output('db')->upload($param['image']);
            $param['image'] = $imageId;
        }

        $model = static::query()->create($param);

        return $model;
    }

    public function update(array $attributes = [], array $options = []) {
        if (isset($attributes['image']) && $attributes['image'] instanceof UploadedFile) {
            $category = $this->fill($attributes)->first()->toArray();
            if ($category['image']) {
                $imageId = $category['image'];
                Image::deleteFiles($imageId);
                Image::destroy($imageId);
            }
            $imageManager = new Imageupload(new ImageManager);
            $imageId = $imageManager->output('db')->upload($attributes['image']);
            $attributes['image'] = $imageId;
        } else {
            unset($attributes['image']);
        }
        if (!$this->exists) {
            return false;
        }
        return $this->fill($attributes)->save($options);
    }

    public static function destroy($ids) {
        if (!is_array($ids)) {
            $category = Category::findOrFail($ids)->toArray();
            if ($category['image']) {
                $imageId = $category['image'];
                Image::deleteFiles($imageId);
                Image::destroy($imageId);
            }
        }
        parent::destroy($ids);
    }

    /**
     * Change activity log event description
     *
     * @param string $eventName
     *
     * @return string
     */
    public function getDescriptionForEvent($eventName) {
        return __CLASS__ . " model has been {$eventName}";
    }

    public static function getAll() {
        return self::select('id', 'title')->get();
    }

    public static function getPrimary() {
        return self::where(['parent_id' => 0])->select('id', 'title', 'slug', 'order')->get()->toArray();
    }

    public static function getWithSubcategories() {
        $items = self::select('id', 'title', 'slug', 'parent_id', 'order')->get()->toArray();
        foreach ($items as $item) {
            if ($item['parent_id'] == 0) {
                $sorted[$item['id']] = $item;
            }
        }
        foreach ($items as $item) {
            if ($item['parent_id'] !== 0) {
                $sorted[$item['parent_id']]['children'][$item['id']] = $item;
            }
        }
        uasort($sorted, function ($item1, $item2) {
            return $item1['order'] <=> $item2['order'];
        });
        foreach ($sorted as $i => $item) {
            if (isset($item['children'])) {
                uasort($sorted[$i]['children'], function ($item1, $item2) {
                    return $item1['order'] <=> $item2['order'];
                });
            }
        }
        return $sorted;
    }

}
