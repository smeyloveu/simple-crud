<?php

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

Route::post('/auth/user/login', 'Auth\UserLoginController@login')->name('auth.user.login');

Auth::routes();

Route::get('/home', 'UserController@index')->name('home');

Route::get('user/create', array('as' => 'user.create', 'uses' => 'UserController@create'));

Route::post('user/store', array('as' => 'user.store', 'uses' => 'UserController@store'));

Route::get('user/show/{id}', array('as' => 'user.show', 'uses' => 'UserController@show'));

Route::get('user/edit/{id}', array('as' => 'user.edit', 'uses' => 'UserController@edit'));

Route::post('user/update/{id}', array('as' => 'user.update', 'uses' => 'UserController@update'));


