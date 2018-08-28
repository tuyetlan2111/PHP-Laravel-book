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
                <h1 class="page-header">Sách
                    <small>Thêm</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">
                <form action="{{route('add_book')}}" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                    <div class="form-group">
                        <label>Tên sách</label>
                        <input class="form-control" name="name" placeholder="Nhập tên sách" />
                    </div>
                    <div class="form-group">
                        <label>Nội dung</label>
                        <!-- ckeditor -->
                        <textarea id="demo" class="form-control" name="content" placeholder="Nhập nội dung"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Giá</label>
                        <input class="form-control" name="price" placeholder="Nhập giá" />
                    </div>    
                    <div class="form-group">
                        <label>Thể loại</label>
                        <select name="category">
                       @foreach($cate as $cate)
                            <option value="{{$cate->id}}">{{$cate->name_cate}}</option>
                        @endforeach
                        </select>
                    </div>     
                    <div class="form-group">
                        <label>Tác giả</label>
                        <select>
                       @foreach($author as $author)
                            <option value="{{$author->id_author}}" name="author">{{$author->name_author}}</option>
                        @endforeach
                        </select>
                    </div>        
                    <div class"form-group">
                        <label>Hình ảnh trước</label>
                        <input type="file" name="img_front">
                    </div>
                    <div class"form-group">
                        <label>Hình ảnh sau</label>
                        <input type="file" name="image_after">
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