@extends('admin.layout.masterDashboard')

@section('title')
    Products | Show
@endsection

@section('subview')
    <div class="row my-3">

        {{-- ----------- slider --------- --}}

        <div class="col-12  d-md-flex justify-content-md-center">

            <div id="itemsslider" class="carousel slide ">

                <div class="carousel-indicators">

                    <button type="button" data-bs-target="#itemsslider" data-bs-slide-to="0" class="active" aria-current="true"
                        aria-label="Slide 1"></button>

                </div>


                <div class="carousel-inner">


                    <div class="carousel-item active">
                        <img src="{{ $item->image }}" class="d-block w-100" style="max-height: 400px " alt="...">
                    </div>

                </div>

                <button class="carousel-control-prev" type="button" data-bs-target="#itemsslider" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>

                <button class="carousel-control-next" type="button" data-bs-target="#itemsslider" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>


        {{-- ----------- End slider -------- --}}

    </div>




    <form action="/admin/items/edit/{{ $item->id }}" method="post">
        @csrf
        <div class="row p-2 mt-4">
            <hr>
            <div class="d-flex justify-content-center">

                <p class="bg-dark p-3 text-white-50 px-5 rounded fs-5 fw-bold">Item Information</p>
            </div>
            <div class="col-md-6">
                <div class="my-2">
                    <label for="itemname" class="text-secondary-emphasis"> Item Name : </label>
                    <input value="{{ $item->name }}" id="itemname" type="text" class="form-control"
                        placeholder="Item Name" name="name">
                    @error('name')
                        <div class="alert alert-danger my-2 fw-bold text-center">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="my-2">
                    <label for="itemprice" class="text-secondary-emphasis"> Price : </label>
                    <input value="{{ $item->price }}" id="itemprice" type="number" class="form-control"
                        placeholder="Price" name="price">
                    @error('price')
                        <div class="alert alert-danger my-2 fw-bold text-center">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            </div>
            <div class="col-12">
                <div class="my-2">
                    <label for="shortDescription" class="text-secondary-emphasis"> Short Description : </label>
                    <input value="{{ $item->short_description }}" id="shortDescription" maxlength="180" type="text"
                        class="form-control" placeholder="Short Description" name="short_description">
                    @error('short_description')
                        <div class="alert alert-danger my-2 fw-bold text-center">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            </div>
            <div class="col-12">
                <div class="my-2">
                    <label for="description" class="text-secondary-emphasis"> Description : </label>
                    <textarea name="description" id="description" placeholder="Description" class="form-control p-3" style="resize: none">{{ $item->description }}</textarea>
                    @error('description')
                        <div class="alert alert-danger my-2 fw-bold text-center">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="my-2">
                    <label for="quantity" class="text-secondary-emphasis"> Qantity : </label>
                    <input value="{{ $item->quantity }}" id="quantity" type="number" min="1" class="form-control"
                        placeholder="Qantity" name="quantity">
                    @error('quantity')
                        <div class="alert alert-danger my-2 fw-bold text-center">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="my-2">

                    <label for="status" class="text-secondary-emphasis"> Status : </label>
                    <select id="status" name="status" class="form-control">
                        <option @selected($item->status == 'inactive') value="inactive"> In Active </option>
                        <option @selected($item->status == 'active') value="active"> Active </option>
                    </select>




                </div>

            </div>
            <div class="col-md-6">
                <div class="my-2">

                    <label for="brand" class="text-secondary-emphasis"> Brand : </label>

                    <select id="brand" name="brand_id" class="form-control my-2">

                        @foreach ($brands as $id => $name)
                            <option @selected($id == $item->brand_id) value="{{ $id }}"> {{ $name }}
                            </option>
                        @endforeach

                    </select>

                </div>

            </div>
            <div class="col-md-6">
                <div class="my-2">

                    <label for="category" class="text-secondary-emphasis"> Category : </label>

                    <select id="category" name="category_id" class="form-control my-2">

                        @foreach ($categories as $id => $name)
                            <option @selected($id == $item->category_id) selected value="{{ $id }}">
                                {{ $name }}
                            </option>
                        @endforeach

                    </select>

                </div>

            </div>
            <div class="my-2 d-flex justify-content-center ">
                <button class="btn btn-primary p-2 px-5">
                    Update
                    <i class="fa-solid fa-pen-to-square"></i>
                </button>
            </div>
            <hr>
        </div>
    </form>
@endsection
