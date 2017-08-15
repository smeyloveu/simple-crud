<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{

	public function index()
    {
        $users = User::paginate(5);
        return view('home', compact('users'));
    }

    public function show($id){

    	$user = User::find($id);
    	return view('user.show', compact('user'));
    }

    public function create(){
    	return view('user.create');
    }
    public function store(Request $request){
    	
    	$user = new User;
    	$user->phone = $request->phone;
    	$user->username = $request->username;
    	$user->password = $request->password;
    	$user->email = $request->email;
    	$user->save();
    	return redirect('home');
    }

    public function edit($id){

    	$user = User::find($id);
    	return view('user.edit', compact('user'));
    }

    public function update(Request $request, $id){

    	$user = User::find($id);
    	$user->username = $request->username;
    	$user->phone = $request->phone;
    	$user->email = $request->email;
        $user->save();
        return redirect('home');
    }
}
