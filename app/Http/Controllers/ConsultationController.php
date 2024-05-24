<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Consultation; //Model
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;


class ConsultationController extends Controller
{
    public function index()
    {
        $allconsultation = Consultation::all();
        return view('consultation')
        ->with('allconsultation',$allconsultation);           
    }

    //consultation form
    public function consultationAddForm()
    {   //renders the form
        return view('consultation');
    }

    public function consultationSave(Request $request)
    {
        $request->validate([
            'consultation_client_name'=> 'required',
            'consultation_client_email'=> 'required',
            'consultation_client_phone_no'=> 'required',
            'consultation_service_name'=> 'required',
            'consultation_date'=> 'required',
            'consultation_time'=> 'required',
            'consultation_medical_info'=> 'required',
            'consultation_comments'=> 'required',
        ]);
        // echo "test"; exit;
        $okSaved = Consultation::create([
            'consultation_client_name' => $request->consultation_client_name,
            'consultation_client_email' => $request->consultation_client_email,
            'consultation_client_phone_no' => $request->consultation_client_phone_no,
            'consultation_service_name' => $request->consultation_service_name,
            'consultation_date' => $request->consultation_date,
            'consultation_time' => $request->consultation_time,
            'consultation_medical_info' => $request->consultation_medical_info,
            'consultation_comments' => $request->consultation_comments,           
        ]);
        
        if ($okSaved) {
            return redirect("/consultation")->withSuccess('Thank you for booking a consultation with us. We look forward to seeing you.');

        } else {
            return redirect("/consultation-add-form")->with('message','There is an error encountered while saving your booking.');
        } 
    }
}
?>