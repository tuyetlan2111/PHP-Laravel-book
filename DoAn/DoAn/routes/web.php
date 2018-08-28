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
Route::get('',[
    'as'=>'trang-chu',
    'uses'=>'PageController@getIndex'
]);

Route::get('category/{type}',[
    'as'=>'category',
    'uses'=>'PageController@getCate'
]);

Route::get('detail/{id}',[
    'as'=>'detail',
    'uses'=>'PageController@getDetail'
]);

Route::get('contact',[
    'as'=>'contact',
    'uses'=>'PageController@getContact'
]);

Route::get('add-to-cart/{id}',[
    'as'=>'themgiohang',
    'uses'=>'PageController@getAddtoCart'
]);

Route::get('del-cart/{id}',[
    'as'=>'xoagiohang',
    'uses'=>'PageController@getDelItemCart'
]);

Route::post('dat_hang',[
    'as'=>'dat_hang',
    'uses'=>'PageController@postCheckout'
]);
Route::get('dat-hang',[
    'as'=>'dathang',
    'uses'=>'PageController@getCheckout'
]);

Route::get('login',[
    'as'=>'login',
    'uses'=>'PageController@getLogin'
]);

Route::post('dat-hang',[
    'as'=>'dathang',
    'uses'=>'PageController@postCheckout'
]);
Route::get('login',[
    'as'=>'login',
    'uses'=>'PageController@getLogin'
]);
Route::post('login',[
    'as'=>'login',
    'uses'=>'PageController@postLogin'
]);
Route::get('signup',[
    'as'=>'signup',
    'uses'=>'PageController@getSignup'
]);
Route::post('signup',[
    'as'=>'signup',
    'uses'=>'PageController@postSignup'
]);

Route::get('logout',[
    'as'=>'logout',
    'uses'=>'PageController@getLogout'
]);

Route::get('search',[
    'as'=>'search',
    'uses'=>'PageController@getSearch'
]);

/**************admin */
Route::get('admin',[
    'as'=>'admin',
    'uses'=>'AdminController@getLoginAdmin'
]);
Route::post('admin',[
    'as'=>'admin',
    'uses'=>'AdminController@postLoginAdmin'
]);
Route::get('site',[
    'as'=>'site',
    'uses'=>'AdminController@getSite'
]);

/**********category */
Route::get('admin-cate',[
    'as'=>'admin-cate',
    'uses'=>'AdminController@getCate'
]);

Route::get('add-cate',[
    'as'=>'add-cate',
    'uses'=>'AdminController@getAddCate'
]);
Route::post('add-cate',[
    'as'=>'add-cate',
    'uses'=>'AdminController@postAddCate'
]);

Route::get('delete-cate/{id_category}',[
    'as'=>'delete-cate',
    'uses'=>'AdminController@getDeleteCate'
]);
Route::post('delete-cate/{id_category}',[
    'as'=>'delete-cate',
    'uses'=>'AdminController@postDeleteCate'
]);

Route::get('edit-cate/{id_category}',[
    'as'=>'edit-cate',
    'uses'=>'AdminController@getEditCate'
]);
Route::post('edit-cate/{id_category}',[
    'as'=>'edit-cate',
    'uses'=>'AdminController@postEditCate'
]);
/************tác giả */
Route::get('show_author',[
    'as'=>'show_author',
    'uses'=>'AdminController@getAuthor'
]);

Route::get('add-author',[
    'as'=>'add-author',
    'uses'=>'AdminController@getAddAuthor'
]);

Route::post('add-author',[
    'as'=>'add-author',
    'uses'=>'AdminController@postAddAuthor'
]);
Route::get('delete_author/{id_author}',[
    'as'=>'delete_author',
    'uses'=>'AdminController@getDeleteAuthor'
]);

Route::get('edit_author/{id_author}',[
    'as'=>'edit_author',
    'uses'=>'AdminController@getEditAuthor'
]);
Route::post('edit_author/{id_author}',[
    'as'=>'edit_author',
    'uses'=>'AdminController@postEditAuthor'
]);
/********book */
Route::get('show_book',[
    'as'=>'show_book',
    'uses'=>'AdminController@getBook'
]);
Route::get('add_book',[
    'as'=>'add_book',
    'uses'=>'AdminController@getAddBook'
]);

Route::post('add_book',[
    'as'=>'add_book',
    'uses'=>'AdminController@postAddBook'
]);

Route::get('delete_book/{id}',[
'as'=>'delete_book',
'uses'=>'AdminController@getdeleteBook'
]);
Route::post('delete_book/{id}',[
    'as'=>'delete_book',
    'uses'=>'AdminController@postdeleteBook'
]);
Route::get('edit_book/{id}',[
    'as'=>'edit_book',
    'uses'=>'AdminController@getEditBook'
]);
Route::post('edit_book/{id}',[
    'as'=>'edit_book',
    'uses'=>'AdminController@postEditBook'
]);
/*************đơn hàng */
Route::get('bill',[
    'as'=>'bill',
    'uses'=>'AdminController@getBill'
]);

Route::get('delete_order/{id_order}',[
    'as'=>'delete_order',
    'uses'=>'AdminController@getDeleteOrder'
]);
Route::post('delete_order/{id_order}',[
    'as'=>'delete_order',
    'uses'=>'AdminController@postDeleteOrder'
]);
/**************nhập kho */
Route::get('list_receipt',[
    'as'=>'list_receipt',
    'uses'=>'AdminController@getListReceipt'
]);
Route::get('detail_receipt/{id_bill}',[
    'as'=>'detail_receipt',
    'uses'=>'AdminController@getDetailReceipt'
]);
Route::get('add_receipt',[
    'as'=>'add_receipt',
    'uses'=>'AdminController@getAddReceipt'
]);

Route::post('add_receipt',[
    'as'=>'add_receipt',
    'uses'=>'AdminController@postAddReceipt'
]);