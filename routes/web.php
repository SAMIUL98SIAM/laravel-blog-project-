<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\TagController;
use App\Http\Controllers\Admin\UserController;
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


// Front End Routes
Route::get('/', [FrontendController::class,'home'])->name('website.home');
Route::get('/about', [FrontendController::class,'about'])->name('website.about');

Route::get('/category/{slug}', [FrontendController::class,'category'])->name('website.category');

Route::get('/tag/{slug}', [FrontendController::class,'tag'])->name('website.tag');


Route::get('/post/{slug}', [FrontendController::class,'post'])->name('website.post');

Route::get('/contact', [FrontendController::class,'contact'])->name('website.contact');
Route::post('/contact', [FrontendController::class,'send_message'])->name('website.contact.store');



// Admin Panel Routes
Route::group(['as' => 'admin.','prefix' => 'admin', 'middleware' => ['auth']], function () {
    Route::get('/dashboard',[DashboardController::class,'dashboard'])->name('dashboard');

    Route::resource('categories',CategoryController::class);
    Route::resource('tags', TagController::class);
    Route::resource('posts', PostController::class);
    Route::resource('users', UserController::class);
    Route::get('/profile', [UserController::class,'profile'])->name('users.profile');
    Route::post('/profile',  [UserController::class,'profile_update'])->name('users.profile.update');


    // setting
    Route::get('/settings', [ SettingController::class,'edit'])->name('settings.index');
    Route::post('/settings', [ SettingController::class,'update'])->name('settings.update');

    // Contact message
    Route::get('/contacts', [ContactController::class,'index'])->name('contacts.index');
    Route::get('/contacts/show/{id}', [ContactController::class,'show'])->name('contacts.show');
    Route::delete('/contacts/delete/{id}', [ContactController::class,'destroy'])->name('contacts.destroy');
});
