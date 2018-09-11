<?php

namespace App\Http\Helpers;

use App\Chunk;
use Illuminate\Support\Facades\Log;

class ChunkHelper {

    public function get($slug) {
        $content = Chunk::getBySlug($slug);
        if (!$content) {
            Log::alert('Вызов несуществующего чанка ' . $slug);
        }
        return $content;
    }

}
