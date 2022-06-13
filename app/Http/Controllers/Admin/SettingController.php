<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Setting  $setting
     * @return \Illuminate\Http\Response
     */
    public function edit(Setting $setting)
    {
        $setting = Setting::first();

        return view('admin.settings.edit', compact('setting'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Setting  $setting
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
       // dd($request->all());
       $this->validate($request, [
        'name' => 'required',
        'copyright' => 'required',
    ]);

    $setting = Setting::first();
    $setting->update($request->all());

    if($request->hasFile('site_logo')){
        $image = $request->site_logo;
        $image_new_name = time() . '.' . $image->getClientOriginalExtension();
        $image->move('storage/setting/', $image_new_name);
        $setting->site_logo = '/storage/setting/' . $image_new_name;
        $setting->save();
    }

    Session::flash('success', 'Setting updated successfully');
    return redirect()->back();
    }

}
