<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Service; //Model
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;



class ServiceController extends Controller
{

    public function index()
    {
        $allServices = Service::where('status', 1)->get();
        // return view('admin.crudService', compact('crudServices'));
        return view('services')
        ->with('allServices',$allServices);           
    }

    public function crud()
    {
        $crudServices = Service::where('status', 1)->get(); 
        return view('admin.crudService', compact('crudServices'));
        //$crudServices = Service::all();
        //$crudServices = Service::where('status', 1)->orWhere('status', 0)->get();
        //return view('admin.crudService')
        //->with('allServices',$allServices);
    }

    //add service
    public function productAddForm()
    {   //renders the form
        return view('admin.addService');
    }

    //add service - recieved the form
    public function productSave(Request $request)
    {
       $request->validate([
        'service_name' => 'required|string|max:150|min:5',
        'service_description' => 'required|string|max:500|min:5',
        'service_price' => 'required',
        'service_type' => 'required',
        ]);

       //add service - saving process
       $okSaved = Service::create([
            'service_name' => $request->service_name,
            'service_description' => $request->service_description,
            'service_price' => $request->service_price,
            'service_type' => $request->service_type,
        ]);

        if ($okSaved) {
            return redirect("/services")->withSuccess('Service was successfuly added');
  
        } else {
            return redirect("/service-add-form")->with('message','There is an error encountered in the saving process');
        }
    }

    //edit service
    public function productUpdateForm(Request $request)
    {
        $productFound = Service::where('service_id', $request->service_id)->first();
        if ($productFound)
        {
            return view('admin.editService', compact('productFound'));

        } else {
            $errorMessage = "Product ID invalid";
            return view('errors.index', compact('errorMessage'));
        }
    }

     //edit service - recieved the form
    public function productUpdate(Request $request)
    {
        $request->validate([
            'service_name' => 'required|string|max:150|min:5',
            'service_description' => 'required|string|max:500|min:5',
            'service_price' => 'required',
            'service_type' => 'required',
        ]);
        //edit service - update process
        $product = Service::find($request->service_id);    
        //$product = Product::where('product_id', $request->product_id)->first();

        if ($product) { //if record exist
            $product->service_name = $request->service_name;
            $product->service_description = $request->service_description;
            $product->service_price = $request->service_price;
            $product->service_type = $request->service_type;
            $okSaved = $product->save();

            if ($okSaved) {
                return redirect("/services")->withSuccess('Service has been successfuly updated');
            } else {
                return redirect("/services")->with('message', 'Error during the updating process');
            } 

        } else {

            $errorMessage = "Product ID invalid";
            return view('errors.index', compact('errorMessage'));
        
        }
    }


    //delete Service
     public function softDelete($service_id)
     {
        $product = Service::find($service_id); 
        $product->status = 0;
        $okSaved = $product->save();     
        if ($okSaved) {
            return redirect("/services")->withSuccess('Service successfuly deleted');
        } else {
            return redirect("/services")->with('message', 'Error on deleting service');
        } 
    }

    //search  
     public function search()
     {
        $search_text = $_GET['query'];
        $allServices = Service::where('service_name','LIKE','%'.$search_text.'%')->get();
        return view('layouts.searchService',compact('allServices'));
    }

    public function adminSearch()
    {
       $search_text = $_GET['query'];
       $crudServices = Service::where('service_name','LIKE','%'.$search_text.'%')->get();
       return view('admin.search',compact('crudServices'));
   }

}


  
    




?>