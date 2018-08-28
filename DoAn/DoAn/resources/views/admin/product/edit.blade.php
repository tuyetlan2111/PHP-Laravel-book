
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
                <h1 class="page-header">Sửa sách {{$edit_book->name}}</h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">
                <form action="{{route('edit_book',$edit_book->id)}}" method="POST">
                    <div class="form-group">
                        <label>Tên sách</label>
                        <input class="form-control" name="name" value="{{$edit_book->name}}"/>
                    </div>
                    <div class="form-group">
                        <label>Thể loại</label>
                        
                        <select name="category">

<?php
foreach ($all_cate as $all_cate) {
    $selected = "";
    if ($cate->id == $all_cate->id) {
        $selected="selected ";
    }
    echo '<option '.$selected.'value="'.$all_cate->id.'">'.$all_cate->name_cate.'</option>';
}

?>

                       
                        </select>
                    </div>  
                    <!-- <div class="form-group">
                        <label>Thể loại</label>
                        <input class="form-control" name="category" value="{{$cate->name_cate}}"/>
                    </div> -->
                    <div class="form-group">
                        <label>Tác giả</label>
                        <input class="form-control" name="author" />
                    </div>
                    <div class="form-group">
                        <label>Nội dung</label>
                        <textarea class="form-control" name="content" rows="3">{{$edit_book->content}}</textarea>
                    </div>
                    <div class="form-group">
                        <label>Giá</label>
                        <input class="form-control" name="price" value="{{$edit_book->price}}"/>
                    </div>  
                    <div class"form-group">
                        <label>Hình ảnh trước</label>                        
                        <img src="{{URL::to('source/assets/dest/images/' . $edit_book->img_front)}}" style="width: 16%; margin-left: 30px;">
                        <input type="file" name="img_front">
                    </div>
                    <div class"form-group">
                        <label>Hình ảnh sau</label>
                        <img src="{{URL::to('source/assets/dest/images/' . $edit_book->img_after)}}" style="width: 16%; margin-left: 30px;">
                        <input type="file" name="image_after" value="{{$edit_book->img_after}}">
                    </div>
                    <button type="submit" class="btn btn-default">Sửa</button>
                    <button type="reset" class="btn btn-default">Làm mới</button>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection