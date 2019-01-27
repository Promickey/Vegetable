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

/*Route::get('/', function () {
    return view('welcome');
});*/
Route::get('/', 'HomeController@index')->name('web');

Route::get('/user/verify/{token}', 'Auth\RegisterController@verify');

Route::group([
    'middleware' => ['auth', 'isAdmin'],
    'prefix'     => 'admin',  //tiền tố cho domain
    'namespace'  => 'Admin',  //tiền tố namespace
    'as'         => 'admin.',  //tiền tố của name route
], 
function () {
	Route::get('dashboard', 'HomeController@index')->name('dashboard'); //tức là 'admin.dashboard'
	Route::resource('categories', 'CategoryController');
	Route::get('categories/{category}/subcategories', 'CategoryController@subcategories')->name('categories.subcategories');
	Route::get('categories/{category}/products', 'CategoryController@productsByCategory')->name('category.products');
	Route::resource('products', 'ProductController');
	Route::resource('users', 'UserController');
	Route::resource('orders', 'OrderController');
	Route::resource('comments', 'CommentController');


});

/*Route::group(['middleware' => ['web', 'auth']], function(){
	Route::get('home', 'HomeController@index')->name('home');
});*/


Auth::routes();

Route::get('home', 'HomeController@index')->name('home');
Route::get('products', 'ProductController@index')->name('products.index');
Route::get('categories/{id}/products', 'ProductController@productByCategory')->name('categories.list-products');
Route::get('products/{product}', 'ProductController@show')->name('products.show');
Route::get('search', 'ProductController@search')->name('search');
Route::post('comments', 'CommentController@store')->name('comments.store');
/*Route::get('users/{user}', 'UserController@showprofile')->middleware('auth')->name('users.profile');*/

Route::group([
    'middleware' => ['auth','myAccount'],
    'prefix'     => 'users',  //tiền tố cho domain
    'as'         => 'users.',  //tiền tố của name route
], 
function () {
	Route::get('/{id}', 'UserController@showprofile')->name('profile');
	Route::get('/{id}/edit', 'UserController@edit')->name('edit'); 
	Route::put('/{id}', 'UserController@update')->name('update');
	Route::get('{id}/showOrder/{order}', 'UserController@showOrder')->name('show-order');
	Route::put('{id}/orders/{order}', 'OrderController@update')->name('orders.update'); 

});

Route::get('/checkout', 'OrderController@index')->name('checkout');
Route::post('/checkout/store', 'OrderController@store')->name('checkout.store');
