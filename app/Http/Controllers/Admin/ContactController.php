<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use Illuminate\Support\Facades\Session;
use App\Notifications\EmailNotification;
use Illuminate\Support\Facades\Notification;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $messages = Contact::latest()->paginate(20);
        return view('admin.contacts.index', compact('messages'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $message = Contact::find($id);

        if($message){
            return view('admin.contacts.show', compact('message'));
        }else {

            Session::flash('error', 'Contact message not found.');
            return redirect()->route('admin.dashboard');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $contact = Contact::find($id);

        if($contact){
            $contact->delete();

            Session::flash('success', 'Message deleted successfully');
        }

        return redirect()->back();
    }

    public function email($id)
    {
        $userEmail = Contact::find($id);
        return view('admin.contacts.email',compact('userEmail'));
    }

    public function email_send(Request $request,$id)
    {
        $userEmail = Contact::find($id);
        $details = [
            'greeting' => $request->greeting ,

            'body' => $request->body ,

            'actiontext' => $request->actiontext ,

            'actionurl' => $request->actionurl ,

            'endpart' => $request->endpart
        ];

        Notification::send($userEmail,new
        EmailNotification($details));

        Session::flash('success', 'Email Send Successfully!!');
        return redirect()->back();
    }

}
