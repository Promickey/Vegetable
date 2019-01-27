<?php

namespace App\Providers;
use App\Category;
use App\User;
use App\Observers\UserObserver;


use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('users.layouts.master', function($view){
            $categories = Category::with('children')->get();
            $view->with('categories', $categories);
        });

        
        
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
