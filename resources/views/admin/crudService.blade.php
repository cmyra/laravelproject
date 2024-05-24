@extends('layouts.index')

@section('content')

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

<h2 class="text-center p-4">This is where you can add, update and delete services.</h2>

<div class="container-sm">
    <div class="row justify-content-center">
        <div class="col-sm-8">
            <div class="card">
                <div class="card-header d-flex justify-content-between px-4 fs-3 fw-bold">Services
                    <!-- Instructor search bar 
                    <form class="d-flex px-0" type="" action="">
                        <input class="form-control" name="query" type="search" onkeyup="processSearch()" placeholder="Search Service" aria-label="Search">
                        <button class="btn btn-outline-primary" type="submit">Search</button>
                    </form> -->
                    <!-- search bar -->
                    <form class="d-flex px-0" type="GET" action="{{ url('/admin/service/search') }}">
                        <input class="form-control" name="query" type="search" placeholder="Search Service" aria-label="Search">
                        <button class="btn btn-outline-primary" type="submit">Search</button>
                    </form> 
                </div>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    
                    @if ($message = Session::get('success'))
                                    <div class="alert alert-success text-center">
                                        {{ $message }}
                                    </div>
                    @endif

                    <div id="productData">
                        <table class="table table-hover">
                            <thead>
                                <tr class="align-text-top">
                                    <th>Services Offered</th>
                                    <th>Type of Service</th>
                                    <th>Description</th>
                                    <th>Price</th>
                                    <th>Actions</th>
                                    <th><button class="btn btn-primary ms-2"><a class="text-white" href="{{ url('service-add-form') }}">Add</a></button></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($crudServices as $crud_Services)
                                <tr>
                                    <td>{{ $crud_Services->service_name }}</td> 
                                    <td>{{ $crud_Services->service_type }}</td> 
                                    <td >{{ $crud_Services->service_description }}</td> 
                                    <td >&#8369;{{ $crud_Services->service_price }}</td> 
                                    <td>
                                    <button id="butEdit" onclick="processEdit({{ $crud_Services->service_id }})" class="btn btn-primary text-white">Edit</button>
                                    </td>
                                    <td>
                                    <a href="{{ url('delete/'.$crud_Services->service_id) }}" onClick="return confirm('Do you really want to proceed with the delete?')" class= "btn btn-danger">Delete</a>
                                    </td>
                                </tr>  
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




         

        
<script>
//edit Service
function processEdit(pId)
{
    window.location.href = '/service-update-form/'+pId 
}

function processSearch(){
   var search = document.getElementById('query').value;
   if (search.length >= 0) {

    $.post("{{ url('/service/search') }}",
        {
            _token: '{!! csrf_token() !!}',
            search_key: search,
        },
        function(data){
           // alert("Data: " + data + "\nStatus: " + status);
           // console.log("Data: " + data + "\nStatus: " + status);
           document.getElementById("productData").innerHTML = data;          
        }
        );
   }  
}


</script>

@endsection






