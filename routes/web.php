<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\ConsultationController;


Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


//manual route start
Route::get('services',function(){
    return view('services');
});
Route::get('contact',function(){
    return view('contact');
});
Route::get('consultation',function(){
    return view('consultation');
});
Route::get('admin/adminDashboard',function(){
    return view('admin/adminDashboard');
});
Route::get('admin/crudService',function(){
    return view('admin/crudService');
});


//display services
Route::get('/services', [ServiceController::class, 'index'])->name('services_Index');
//crud page
Route::get('admin/crudService', [ServiceController::class, 'crud'])->name('crudService_Index');
//edit service
Route::get('/service-update-form/{service_id}', [ServiceController::class, 'productUpdateForm'])->name('product_Update_Form');
Route::post('/products-update', [ServiceController::class, 'productUpdate'])->name('product_Update');
//add - route that loads the form
Route::get('/service-add-form', [ServiceController::class, 'productAddForm'])->name('product_Add_Form');
//add - route that recieves data from form
Route::post('/products-save', [ServiceController::class, 'productSave'])->name('product_Save');
//delete service
Route::get('delete/{service_id}',[ServiceController::class,'softDelete']);
//search
Route::get('/service/search', [ServiceController::class,'search']);
Route::get('/admin/service/search', [ServiceController::class,'adminSearch']);
//display consultation
Route::get('/consultation', [ConsultationController::class, 'index'])->name('consultation_Index');
//consultation - add
Route::get('/consultation-add-form', [ConsultationController::class, 'consultationAddForm']);
Route::post('/consultation-save', [ConsultationController::class, 'consultationSave'])->name('consultation_Save');

//manual route end





