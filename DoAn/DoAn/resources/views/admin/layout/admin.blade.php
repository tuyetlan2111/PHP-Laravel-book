<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Khóa Học Lập Trình Laravel Framework 5.x Tại Khoa Phạm">
    <meta name="author" content="">
    <title>Trang web bán hàng</title>
    <link href="{{URL::to('admin-asset/bower_components/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::to('admin-asset/bower_components/metisMenu/dist/metisMenu.min.css')}}" rel="stylesheet">

    <link href="{{URL::to('admin-asset/dist/css/sb-admin-2.css')}}" rel="stylesheet">
    <link href="{{URL::to('admin-asset/bower_components/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{URL::to('admin-asset/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css')}}" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="{{URL::to('admin-asset/bower_components/datatables-responsive/css/dataTables.responsive.css')}}" rel="stylesheet">
</head>

<body>

    <div id="wrapper">

       @include('admin.layout.header')
        

@yield('content')

    </div>

    <script src="{{URL::to('admin-asset/bower_components/jquery/dist/jquery.min.js')}}"></script>
    <script src="{{URL::to('admin-asset/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <script src="{{URL::to('admin-asset/bower_components/metisMenu/dist/metisMenu.min.js')}}"></script>
    <script src="{{URL::to('admin-asset/dist/js/sb-admin-2.js')}}"></script>
    <script src="{{URL::to('admin-asset/bower_components/DataTables/media/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{URL::to('admin-asset/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js')}}"></script>
    <script type="text/javascript" language="javascript" src="{{URL::to('admin-asset/ckeditor/ckeditor.js')}}"></script>
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
</body>

</html>
