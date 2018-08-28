
@extends('admin.layout.admin');
@section('content');
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
            @if(count($errors) > 0)
                    <div class="alert alert-danger">
                        @foreach($errors ->all() as $err)
                        {{$err}}
                        @endforeach
                    @endif
                <h1 class="page-header">Hóa đơn khách hàng
                    <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th>ID</th>
                        <th>Mã khách hàng</th>
                        <th>Tên</th>
                        <th>Địa chỉ</th>
                        <th>Mail</th>
                        <th>Số điện thoại</th>
                        <th>Ngày</th>
                        <th>Xóa</th>
                        <th>Sửa</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($order as $order)
                    <tr class="odd gradeX" align="center">
                        <td>{{$order->id_order}}</td>
                        <td>{{$order->id_customer}}</td>
                        <td>{{$order->name_receiver}}</td>
                        <td>{{$order->address_receiver}}</td>
                        <td>{{$order->email_receiver}}</td>
                        <td>{{$order->date_order}}</td>
                        <td>{{$order->phone_receive}}</td>
                        <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{{route('delete_order',$order->id_order)}}"> Xóa</a></td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="">Sửa</a></td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection