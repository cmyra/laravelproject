

@extends('layouts.index')
@section('content')

    <h2 class="mt-5 text-center">Update Service</h2>

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
        <form action="{{ route('product_Update') }}" method="POST">
        @csrf
            <input type="hidden" name="service_id" value="{{ $productFound->service_id }}">
            <label for="service_name">Service Name:</label><br>
            <input type="text" id="service_name" name="service_name" value="{{ $productFound->service_name }}"> <br><br>

            <label for="service_description">Service Description:</label><br>
            <input type="text" id="service_description" name="service_description" value="{{ $productFound->service_description }}"> <br><br>
            

            <label for="service_price">Service Price:</label><br>
            <input type="text" id="service_price" name="service_price" value="<?php echo $productFound->service_price ?>"><br><br>
            
            <label for="service_type">Service Type:</label><br>
            <input type="text" id="service_type" name="service_type" value="<?php echo $productFound->service_type ?>"><br><br>

            <input type="submit" value="Submit">
        </form> 
    </div>

@endsection