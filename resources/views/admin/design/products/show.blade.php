@extends('admin.layout.masterDashboard')

@section('title')
    Products | All
@endsection

@section('subview')
    <div class="row">

        @foreach ($items as $item)
            <div class="col-md-6 col-lg-4">

                <div class="card my-2">
                    <img src="{{ $item->image }}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"> {{ $item->name}} </h5>
                        <p class="card-text" style="height: 50px">{{ $item->short_description}} </p>
                        <a href="products/show/{{$item-> id}}" class="btn btn-info"> Show Detelis  </a>
                    </div>
                </div>

            </div>
        @endforeach
    </div>
@endsection
