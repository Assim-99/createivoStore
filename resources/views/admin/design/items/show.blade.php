@extends('admin.layout.masterDashboard')

@section('title')
    Products | All
@endsection

@section('subview')
    <style>
        .pagination li {
            padding: 0px !important;
        }

        .form-select~label,
        .dt-info,
        .form-select {
            display: none !important;
        }
    </style>

    <div>
        <a href="/admin/items/create">
            <button class=" btn bg-success bg-gradient text-light fw-bold ">
                Add New Item
                <i class="fa-solid fa-plus"></i>
            </button>
        </a>
        <hr>
    </div>

    <div class="row">
        <div class="col-12 table-responsive">
            <table class="table  table-striped table-hover table-bordered " id="tableitems">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Category</th>
                        <th>Status</th>
                    </tr>
                </thead>


                <tbody>

                    @foreach ($items as $item)
                        <tr>
                            <td class="d-flex justify-content-between">

                                <div class="d-flex justify-content-start">
                                    {{-- <input type="checkbox" value="{{$item -> id}}" name="checkedItem" id="" class="mx-2"> --}}
                                    <img style="width:auto; height:50px" src="{{ $item->image }}" alt="">
                                    <div class="d-flex flex-column mx-2 ">
                                        <span class="fw-bold">{{ ucwords($item->name) }}</span>
                                        <span class="text-secondary">ID : STJ20{{ $item->id }}</span>
                                    </div>
                                </div>

                                <div class="d-flex">


                                    <span class="mx-1">
                                        <button type="button" class="btn bg-info bg-gradient px-3 text-light fw-bold"
                                            data-bs-toggle="modal" data-bs-target="#exampleModal{{ $item->id }}">
                                            View
                                            <i class="fa-solid fa-eye"></i>
                                        </button>
                                    </span>

                                    <a href="/admin/items/show/{{ $item->id }}" class="mx-1">
                                        <button class="btn bg-primary bg-gradient px-3 text-light fw-bold ">
                                            Edit
                                            <i class="fa-regular fa-pen-to-square"></i>
                                        </button>
                                    </a>
                                </div>
                            </td>

                            <td>{{ $item->price }} EGP</td>
                            <td>{{ $item->category->name }} </td>
                            <td>

                                @if ($item->status == 'active')
                                    <i class="fa-solid fa-circle text-success px-3" style="font-size:10px "></i>
                                    <span class="text-success fw-bold">
                                        {{ ucwords($item->status) }}
                                    </span>
                                @else
                                    <i class="fa-solid fa-circle text-danger px-3" style="font-size:10px "></i>
                                    <span class="text-danger fw-bold">
                                        {{ ucwords($item->status) }}
                                    </span>
                                @endif


                            </td>
                        </tr>



                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal{{ $item->id }}" tabindex="-1"
                            aria-labelledby="exampleModal{{ $item->id }}Label" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModal{{ $item->id }}Label">
                                            {{ ucwords($item->name) }}
                                        </h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">

                                        <div style="height:200px;"
                                            class="d-flex flex-column align-items-center justify-content-evenly">

                                            <div class="fw-bold"> <span class="text-success">Price</span> :
                                                {{ $item->price }} EGP </div>
                                            <div class="fw-bold"> <span class="text-success">Category</span>
                                                :{{ $item->category->name }} </div>
                                            <div class="fw-bold"> <span class="text-success">Brand</span> :
                                                {{ $item->brand->name }} </div>
                                            <div class="fw-bold"> <span class="text-success">Quantity</span> :
                                                {{ $item->quantity }} Peise </div>
                                            <div class="fw-bold"> <span class="text-success"> Created By </span> :
                                                {{ $item->createdBy->name }} </div>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </tbody>
            </table>

        </div>
    </div>
@endsection
