@extends('admin.layout.masterDashboard')

@section('title')
    Products | Update
@endsection

<style>
    .nav-link::after{
        display: none !important;
    }
</style>
@section('subview')
    <div class="row my-3">
        {{-- ----------- slider --------- --}}

        <div class="col-md-4">

            <div class="d-flex justify-content-center pt-md-5">

                <div style="max-width:300px" id="itemsslider" class="carousel slide pt-md-2" data-bs-ride="carousel ">
                    <div class="carousel-inner">

                        <div class="carousel-item active" data-bs-interval="10000">
                            <img src="{{ $item->image }}" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item" data-bs-interval="10000">
                            <img src="{{ $item->image }}" class="d-block w-100" alt="...">
                        </div>


                        <button class="carousel-control-prev" type="button" data-bs-target="#itemsslider"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#itemsslider"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>

        </div>

        {{-- ----------- End slider -------- --}}

        <div class="col-md-8">
            <form id="updateForm">

                <div class="row px-3">
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
                            <input value="{{ $item->price}}" id="itemprice" type="number" step="any"
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
                            <input value="{{ $item->short_description }}" id="shortDescription" maxlength="180"
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
                            <input value="{{ $item->quantity }}" id="quantity" type="number" class="form-control"
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
                                    @checked($item->status == 'active') id="Active">
                                <label class="form-check-label" for="Active">
                                    Active
                                </label>
                            </div>
                            <div class="form-check">

                                <input class="form-check-input" type="radio" name="status" value="inactive"
                                    @checked($item->status == 'inactive') id="inActive" checked>

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
                        <button type="submit" class="btn btn-primary p-2 px-5">
                            Update
                            <i class="fa-solid fa-pen-to-square"></i>
                        </button>
                    </div>


                </div>

            </form>
        </div>

        <hr>

    </div>


    <script>
        let formTag = document.querySelector('#updateForm');
        formTag.addEventListener("submit", function(e) {
            e.preventDefault()
            let form = e.target;
            let formData = new FormData(form);
            fetch('/admin/items/edit/{{ $item->id }}', {
                    method: 'POST',
                    body: formData,
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    }
                })
                .then(function() {
                    {
                        Swal.fire({
                            title: "Update Has Been Done",
                            icon: "success",
                            draggable: true
                        });
                    }
                })
        });
    </script>
@endsection
