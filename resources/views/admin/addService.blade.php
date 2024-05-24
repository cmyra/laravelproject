
@extends('layouts.index')
@section('content')

        <h2 class="mt-5 text-center">Add Service</h2>

            @if ($errors->any())
                <div class="alert alert-danger text-center">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif


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

        <div class="d-flex justify-content-center align-items-center">
        <form action="{{ route('product_Save') }}" method="POST">
        @csrf
        
        <label for="service_name">Service Name:</label><br>
        <input type="text" id="service_name" name="service_name"> <br><br>

        <label for="service_description">Service Description:</label><br>
        <input type="text" id="service_description" name="service_description"> <br><br>
        

        <label for="service_price">Service Price:</label><br>
        <input type="text" id="service_price" name="service_price"><br><br>
        
        <label for="service_type">Service Type:</label><br>
        <input type="text" id="service_type" name="service_type"><br><br>

        <input type="submit" value="Submit">
        </form> 
        </div>

@endsection