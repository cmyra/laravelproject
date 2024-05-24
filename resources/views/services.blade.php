<div id="header"></div>
@include("layouts.layout")
@extends('layouts.app')
@section('content')


<!--search -->
<div class="row justify-content-center align-items-center">
    <div class="col col-sm-6">
        <div class="fs-1 mb-2 ">Services Offered</div>
    </div>
    <div class="col col-sm-4">
    <form class="d-md-flex" type="GET" action="{{ url('/service/search') }}">
        <input class="form-control me-2 w-75" name="query" type="search" placeholder="Search Service" aria-label="Search">
        <button class="btn text-white" type="submit">Search</button>
    </form>
    </div>
</div>


@if ($message = Session::get('success'))
                <div class="alert alert-success text-center">
                    {{ $message }}
                </div>
@endif
   
@foreach ($allServices as $displayServices)
<div class="d-flex justify-content-center align-items-center">   
    <div class="card mb-3" style="max-width: 1000px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="litrato/carousel1.jpg" class="img-fluid rounded-start h-100" alt="...">
            </div>
                <div class="col-md-8">
                    <div class="card-body">   
                        <div class="clearfix"> 
                            <span class="_serviceName float-start fw-bold fs-3 p-2">{{ $displayServices->service_name }}</span> 
                            <span class="_servicePrice float-end fw-bold fs-3 p-2">&#8369; {{ $displayServices->service_price }}</span> 
                        </div> 
                        <div class="clearfix">                    
                        <p class="float-start card-text ps-2"><small class="text-muted">{{ $displayServices->service_type }}</small></p>
                        <p class="float-end card-text"><small class="text-muted px-2">Promo Package: 5+1</small></p>               
                        </div>
                        <p class="card-text ps-2">{{ $displayServices->service_description }}</p>
                        <a href="#" class="btn text-white ms-2">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endforeach



<script>
   //edit
   function processEdit(pId)
{
    window.location.href = '/products-update-form/'+pId 
}

<script src="{{ asset('js/app.js') }}"> </script>

<div id="footer"></div>
@endsection