@extends('admin.layout.masterDashboard')

@section('title')
    Products | Add 
@endsection

@section('subview')

    <div class="row my-3">
   
        <div class="col-md-8">
            <form id="updateForm">

                <div class="row px-3">
                    <div class="col-md-6">
                        <div class="my-2">
                            <label for="itemname" class="text-secondary-emphasis"> Item Name : </label>
                            <input value="" id="itemname" type="text" class="form-control"
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
                            <input value="" id="itemprice" type="number" step="any"
                                class="form-control" placeholder="Price" name="price">
                            @error('price')
                                <div class="alert alert-danger my-2 fw-bold text-center">
                                    {{$message}}
                                </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="my-2">
                            <label for="shortDescription" class="text-secondary-emphasis"> Short Description : </label>
                            <input value="" id="shortDescription" maxlength="180"
                                type="text" class="form-control" placeholder="Short Description"
                                name="short_description">
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
                            <textarea name="description" id="description" placeholder="Description" class="form-control p-3" style="resize: none"></textarea>
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
                            <input value="" id="quantity" type="number" class="form-control"
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


                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="status" value="active"
                                    id="Active">
                                <label class="form-check-label" for="Active">
                                    Active
                                </label>
                            </div>
                            <div class="form-check">

                                <input class="form-check-input" type="radio" name="status" value="inactive"
                                    id="inActive" >
                                <label class="form-check-label" for="inActive">
                                    Inactive
                                </label>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div class="my-2">

                            <label for="brand" class="text-secondary-emphasis"> Brand : </label>

                            <select id="brand" name="brand_id" class="form-control my-2">

                                @foreach ($brands as $id => $name)
                                    <option  value="{{ $id }}"> {{ $name }}
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
                                    <option   value="{{ $id }}">
                                        {{ $name }}
                                    </option>
                                @endforeach

                            </select>

                        </div>

                    </div>

                    <div class="my-2 d-flex justify-content-center ">
                        <button type="submit" class="btn btn-primary p-2 px-5">
                            Add
                            <i class="fa-solid fa-plus"></i>
                        </button>
                    </div>


                </div>

            </form>
        </div>
        <hr>
    </div>

    
@endsection
