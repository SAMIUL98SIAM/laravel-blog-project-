<?php

use App\Http\Controllers\Website\FrontendController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


// Front End Routes
Route::get('/', [FrontendController::class,'home'])->name('website.home');
Route::get('/about', [FrontendController::class,'about'])->name('website.about');
Route::get('/category', [FrontendController::class,'category'])->name('website.category');
Route::get('/contact', [FrontendController::class,'contact'])->name('website.contact');

