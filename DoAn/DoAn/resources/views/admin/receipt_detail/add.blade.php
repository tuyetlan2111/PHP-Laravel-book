@extends('admin.layout.admin');
@section('content');

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
        
                <h1 class="page-header">Phiếu nhập kho</h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">
                <form action="" method="POST">
             
                    <div class="form-group">
                        <label>Tên thể loại</label>
                        <input class="form-control" name="name_admin" readonly />
                    </div>
                    <div class="form-group">
                        <label>Tên công ty</label>
                        <input class="form-control" name="name_company"/>
                    </div>
                    <button type="submit" class="btn btn-default">Thêm</button>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection;