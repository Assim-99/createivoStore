@include('admin/components/header')
<!-- Page Wrapper -->
<div id="wrapper">


    @include('admin/components/sidebar')

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            @include('admin/components/navbar')


            <!-- Begin Page Content -->
            <div class="container-fluid">
                @yield('subview')
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        @include('admin/components/footer')
