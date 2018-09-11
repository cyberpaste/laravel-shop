<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Http\Helpers\ChunkHelper;

class ChunkServiceProvider extends ServiceProvider {

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot() {
        $this->app->singleton('chunk', function($app) {
            return new ChunkHelper;
        });
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register() {
        //
    }

}
