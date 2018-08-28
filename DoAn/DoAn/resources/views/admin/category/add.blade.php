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
                   @if(Session::has('thanhcong'))
                   <div class="alert alert-success">{{Session::get('thanhcong')}}</div>
                   @endif
                <h1 class="page-header">Thể loại
                    <small>Thêm</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">
                <form action="{{route('add-cate')}}" method="POST">
                <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                    <div class="form-group">
                        <label>Tên thể loại</label>
                        <input class="form-control" name="name_cate" placeholder="Nhập thể loại mới cần thêm" />
                    </div>
                    <button type="submit" class="btn btn-default">Thêm</button>
                <form>
            </div>
        </div>
    </div>
</div>
@endsection;