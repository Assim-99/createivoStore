@extends('admin.layout.masterDashboard')

@section('title')
    Products | All
@endsection

@section('subview')
    <div class="row">

        @foreach ($items as $item)
            <div class="col-md-6 col-lg-4 col-xl-3">

                <div class="card my-2 bg-dark bg-gradient overflow-auto" style="height: 220px;">

                    <div class="card-body text-center d-flex flex-column justify-content-evenly">

                        <b class="card-title text-light"> <span class="text-danger"> Item: </span>{{ ucwords( $item->name)}} </b>

                          <b class="card-title text-light"> <span class="text-danger"> Status: </span>{{ucwords($item->status)}} </b>

                            <b class="card-title text-light"> <span class="text-danger"> Price: </span>{{$item->price}} EGP </b>

                            
                            <b class="card-title text-light"> <span class="text-danger"> quantity: </span>{{$item-> quantity}} Peice </b>

            
                        <div class="d-flex justify-content-center">
                            <a href="items/show/{{$item-> id}}" class="btn bg-danger bg-gradient px-5 text-light "> <b>Show Detelis</b>  </a>

                        </div>
                    </div>
                </div>

            </div>
        @endforeach
    </div>

    <div class="d-flex justify-content-center my-3">
        {{ $items->links() }}
    </div>

    

@endsection
