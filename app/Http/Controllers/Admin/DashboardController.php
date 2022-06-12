<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Post;
use App\Models\Category;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
   public function dashboard()
   {
    $data['posts'] = Post::orderBy('created_at', 'DESC')->take(4)->get();
    $data['postCount'] = Post::all()->count();
    $data['categoryCount'] = Category::all()->count();
    $data['tagCount'] = Tag::all()->count();
    $data['userCount'] = User::all()->count();
    return view('admin.dashboard.index',$data);
   }
}
