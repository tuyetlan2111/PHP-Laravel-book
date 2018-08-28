
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
                <h1 class="page-header">Hóa đơn nhập kho
                    <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th>ID</th>
                        <th>Tên người nhập</th>
                        <th>Số điện thoại</th>
                        <th>Ngày</th>
                        <th>Công ty phân phối</th>
                        <!-- <th>Xóa</th>
                        <th>Sửa</th> -->
                        <th>Chi tiết</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($receipt as $receipt)
                    <tr class="odd gradeX" align="center">
                        <td>{{$receipt->id}}</td>
                        <td> {{Auth::user()->username}}</td>
                        <td>{{$receipt->phone}}</td>
                        <td>{{$receipt->date}}</td>
                        <td>{{$receipt->publishing_company}}</td>
                        <!-- <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="">Xóa</a></td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="">Sửa</a></td> -->
                        <td class="center"> <a href="{{route('detail_receipt',$receipt->id)}}">Chi tiết</a></td>
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