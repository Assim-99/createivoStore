@extends('admin.layout.masterDashboard')

@section('title')
    Products | Show
@endsection

@section('subview')
    <div class="row">
        <div class="">

            <div class="card border-3 shadow-lg my-5">

                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-flex align-items-center">
                            <img src="{{ $item->image }}" class="w-100 rounded" alt="">
                        </div>


                        <div class="col-lg-6 p-md-4">

                            <div>
                                <form action="/products/{{ $item->id }}/edit" method="post">
                                    <div class="border p-3 ">
                                        <h1 class=" h3 text-center mb-4"> بيانات المنتج </h1>

                                        <div class="m-2">
                                            <span class="text-danger" style="font-weight: bold">Items Name</span> : <input
                                                type="text" value="{{ $item->name }}" class="form-control my-2">
                                        </div>

                                        <div class="m-2">
                                            <span class="text-danger" style="font-weight: bold">Price </span> :
                                            <input type="text" value="{{ $item->price }}EGP" class="form-control my-2">

                                        </div>

                                        <div class="m-2">
                                            <span class="text-danger" style="font-weight: bold"> Description </span> :
                                            <textarea name="" class="form-control p-3 my-2"> {{ $item->description }}</textarea>

                                        </div>

                                        <div class="m-2">
                                            <span class="text-danger" style="font-weight: bold">Qantity </span> :
                                            <input type="text" class="form-control my-2" value="{{ $item->quantity }}"
                                                name="" id="">

                                        </div>


                                        <div class="mt-2">

                                            <span class="text-danger" style="font-weight: bold">Status </span> :

                                            <select name="" class="form-control my-2">
                                                <option @selected($item->status == 'inactive') value="inactive"> In Active </option>
                                                <option @selected($item->status == 'active') value="active"> Active </option>
                                            </select>


                                        </div>

                                     
                                            <button class="btn btn-info w-100"> Edit </button>
                                        
                                </form>

                            </div>




                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    </div>
@endsection
