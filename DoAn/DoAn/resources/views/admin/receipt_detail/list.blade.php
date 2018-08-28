
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
                <h1 class="page-header">Chi tiết phiếu nhập kho</h1>
            </div>
            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    
                    <tr align="center">
                        <th>Tên sách</th>
                        <th style="width: 24%;">Hình</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Xóa</th>
                        <th>Sửa</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($receipt_detail as $receipt_detail)
                    <tr class="odd gradeX" align="center">
                        <td>{{$receipt_detail->name}}</td>
                        <td><img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/images/{{$receipt_detail->img_front}}" alt="" style="width: 24%;"></td>
                        <td>{{$receipt_detail->price}}</td>
                        <td>{{$receipt_detail->count}}</td>
                        <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="">Xóa</a></td>
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