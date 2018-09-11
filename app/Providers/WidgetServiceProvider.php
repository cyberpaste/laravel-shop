<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Http\Helpers\WidgetHelper;

class WidgetServiceProvider extends ServiceProvider {

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot() {
        $this->app->singleton('widget', function($app) {
            return new WidgetHelper;
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
