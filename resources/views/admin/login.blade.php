<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SB Admin 2 - Login</title>
    <!-- Custom fonts for this template-->
    <link href="{{ asset('admin/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="{{ asset('admin/css/sb-admin-2.min.css') }}" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center mt-5">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card border-3 shadow-lg my-5 mt">

                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image">
                                <img src="{{ asset('admin/img/logo.png') }}" class="w-100 h-100" alt="">
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">

                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4"> لوحة تحكم الادمن </h1>
                                        @session('statLog')
                                            <div class="alert alert-danger text-center">
                                                something Wrong Check Usernaem Or Password
                                            </div>
                                        @endsession
                                    </div>


                                    <form class="user" method="POST" action="{{ route('actionLogin') }}">
                                        @csrf
                                        <div class="form-group">
                                            <input type="text" name="username" value="{{ old('username') }}"
                                                class="form-control form-control-user" id="exampleInputusername"
                                                aria-describedby="usernameHelp" placeholder="Enter User Name ...">

                                            @error('username')
                                                <div class="alert alert-danger my-2 fw-bold">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>






                                        <div class="form-group">
                                            <input type="password" name="password"
                                                class="form-control form-control-user" id="exampleInputPassword"
                                                placeholder="Password">

                                            @error('password')
                                                <div class="alert alert-danger my-2 fw-bold">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>


                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" name="remember" value="1"
                                                    class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>

                                        <button class="btn btn-primary btn-user btn-block"> Login </button>


                                        <hr>
                                    </form>




                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('admin/vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('admin/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{ asset('admin/vendor/jquery-easing/jquery.easing.min.js') }}"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{ asset('admin/js/sb-admin-2.min.js') }}"></script>

</body>

</html>
