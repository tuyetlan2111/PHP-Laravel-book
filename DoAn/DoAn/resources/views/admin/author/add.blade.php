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
                <h1 class="page-header">Tác giả
                    <small>Thêm</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">
                <form action="{{route('add-author')}}" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                    <div class="form-group">
                        <label>Tên tác giả</label>
                        <input class="form-control" name="name_author" placeholder="Nhập vào tên tác giả" />
                    </div>
                    <div class="form-group">
                        <label>Gmail</label>
                        <input class="form-control" name="gmail" placeholder="Gmail tác giả" />
                    </div>
                    <div class="form-group">
                        <label>Facebook</label>
                        <input class="form-control" name="facebook" placeholder="Facebook tác giả" />
                    </div>
                    <div class="form-group">
                        <label for="hinhthe">Chọn hình</label>
                        <input type="file" class="form-control" name="img_author" id="hinhthe"/>
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