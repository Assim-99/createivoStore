@extends('admin.layout.masterDashboard')

@section('title')
    Products | All
@endsection

@section('subview')
    <div class="row">

        @foreach ($items as $item)
            <div class="col-md-6 col-lg-4">

                <div class="card my-2">
                    <img  style="height: 230px" src="{{ $item->image }}" class="card-img-top w-100 " alt="...">
                    <div class="card-body text-center">

                        <h5 class="card-title"> {{ $item->name}} </h5>

                        <p style="height: 50px">{{ $item->short_description}} </p>

                        <div class="d-flex justify-content-center">
                            <a href="items/show/{{$item-> id}}" class="btn btn-primary fw-bold px-5"> Show Detelis  </a>
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
