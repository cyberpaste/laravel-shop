<?php

namespace App;

use Matriphe\Imageupload\ImageuploadModel;
use File;

class Image extends ImageuploadModel {

    protected $table = 'images';

    public static function deleteFiles($id) {
        $image = self::findOrFail($id)->toArray();
        $files = array($image['original_filepath'],
            $image['square50_filepath'],
            $image['square100_filepath'],
            $image['square200_filepath'],
            $image['square400_filepath'],
            $image['size50_filepath'],
            $image['size100_filepath'],
            $image['size200_filepath'],
            $image['size400_filepath']);
        return File::delete($files);
    }

}
