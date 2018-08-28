@extends('admin.layout.admin');
@section('content');

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="col-md-4 user"><h3>Số lượng sách</h3><span style="font-size: 32px;">{{(count($all_book))}}</span></div>
                <div class="col-md-4 stati"><h3>Số lượng khách hàng</h3><span style="font-size: 32px;">{{(count($user))}}</span></div>
                <div class="col-md-4 book"><h3>Số lượng hóa đơn</h3><span style="font-size: 32px;">{{(count($order))}}</span></div>
            </div>
            <div class="col-lg-7" style="padding-bottom:120px">
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection;