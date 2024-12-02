<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Route;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Route::middleware(['auth'])->group(function () {
            Route::get('/redirect', function () {
                $user = Auth::user();
                
                return match($user->role) {
                    'admin' => Redirect::route('admin_dashboard'),
                    'teacher' => Redirect::route('teacher_dashboard'),
                    'principle' => Redirect::route('principle_dashboard'),
                    'analyst' => Redirect::route('analyst.dashboard'),
                    default => Redirect::route('student_dashboard'),
                };
            });
        });
        
        
    }
}
