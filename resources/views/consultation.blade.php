<div id="header"></div>
@include("layouts.layout")
@extends('layouts.app')
@section('content')

            @if(session()->has('message'))
                                    <div class="alert alert-danger text-center">
                                        {{ session()->get('message') }}
                                    </div>
            @endif


            @if ($message = Session::get('success'))
                            <div class="alert alert-success text-center">
                                {{ $message }}
                            </div>
            @endif
            
            <!-- loop error message for debugging-->
            @if ($errors->any())
             <div class="alert alert-danger text-center">
                 <ul>
                 @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
                 </ul>
            </div>
            @endif


<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card _consultation">
                <div class="card-header">Request for consultation</div>
                <div class="card-body _consultationBody">
                    <form method="POST" action="{{ route('consultation_Save') }}">
                        @csrf    
                        <div class="row mb-3">
                            <label for="consultation_client_name" class="col-md-4 col-form-label text-md-end">Name</label>
                            <div class="col-md-6">
                                <input id="consultation_client_name" type="text" class="w-100" name="consultation_client_name" value="" required autocomplete="consultation_client_name" autofocus>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="consultation_client_email" class="col-md-4 col-form-label text-md-end">Email Address</label>
                            <div class="col-md-6">
                                <input id="consultation_client_email" type="email" class="w-100" name="consultation_client_email" value="" required autocomplete="consultation_client_email"> 
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label for="consultation_client_phone_no" class="col-md-4 col-form-label text-md-end"> Phone (required)</label>
                            <div class="col-md-6">
                                <input type="tel" id="consultation_client_phone_no" class="w-100" name="consultation_client_phone_no" placeholder="Phone number" required>
                            </div>
                        </div>
          
                        <div class="row mb-3">
                            <label for="consultation_service_name" class="col-md-4 col-form-label text-md-end">Choice of Service</label>
                            <div class="col-md-6">
                            <select id="consultation_service_name" class="w-100" name="consultation_service_name">
                                <option value=""></option>
                                <option value="Carbon Peel Facial">Carbon Peel Facial</option>
                                <option value="Galvanic Facial">Galvanic Facial</option>
                                <option value="ntensive Acne Facial">Intensive Acne Facial</option>
                                <option value="Stem Cells Facial">Stem Cells Facial</option>
                                <option value="Signature Hydra Facial">Signature Hydra Facial</option>
                                <option value="Skin Resurfacing Regular">Skin Resurfacing Regular</option>
                                <option value="Skin Resurfacing Premium">Skin Resurfacing Premium</option>
                                <option value="Warts Removal">Warts Removal</option>
                                <option value="Keloid Injection">Keloid Injection</option>
                                <option value="Radiance Drip">Radiance Drip</option>
                                <option value="Vitality Drip">Vitality Drip</option>
                                <option value="Other">Other</option>
                            </select>
                            </div>
                        </div>
                    
                        <div class="row mb-3">
                            <label for="consultation_date" class="col-md-4 col-form-label text-md-end"> Date (required)</label>
                            <div class="col-md-6">
                            <input type="date" id="consultation_date" class="w-100" name="consultation_date" placeholder="Select your preferred date" required>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="consultation_time" class="col-md-4 col-form-label text-md-end"> Time (required)</label>
                            <div class="col-md-6">
                            <input type="time" id="consultation_time" class="w-100" name="consultation_time" placeholder="Select your preferred time" required>
                            </div>
                        </div>
                
                        <div class="row mb-3">
                            <label for="consultation_medical_info" class="col-md-4 col-form-label text-md-end"> Medical Information (optional)</label>
                            <div class="col-md-6">
                            <textarea id="consultation_medical_info" class="w-100" name="consultation_medical_info" placeholder="Write something.." style="height:200px"></textarea>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="consultation_comments" class="col-md-4 col-form-label text-md-end"> Comments (optional)</label>
                            <div class="col-md-6">
                            <textarea id="consultation_comments" class="w-100" name="consultation_comments" placeholder="Write something.." style="height:200px"></textarea>
                            </div>
                        </div>

                       <!-- <div class="m-4 text-center">
                        <input type="checkbox"  name="consent" id="consent" >
                        I verify that I am of legal age (18 years old and above) to undergo this treatment.
                        </div> -->
       
                        <div class="m-4 text-center">
                                <button type="submit" class="btn text-white">
                                  Submit
                                </button>
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>




<div id="footer"></div>

<script src="{{ asset('js/app.js') }}"> </script>

@endsection


