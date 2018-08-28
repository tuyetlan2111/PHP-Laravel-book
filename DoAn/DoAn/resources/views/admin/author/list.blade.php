
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
                <h1 class="page-header">Tác giả
                    <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th>ID</th>
                        <th>Tên</th>
                        <th>Hình</th>
                        <th>Gmail</th>
                        <th>Facebook</th>
                        <th>Xóa</th>
                        <th>Sửa</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($author as $author)
                    <tr class="odd gradeX" align="center">
                        <td>{{$author->id_author}}</td>
                        <td>{{$author->name_author}}</td>
                        <td><img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/images/{{$author->img_author}}" alt="" style="width: 27%;"></td>
                        <td>{{$author->gmail}}</td>
                        <td>{{$author->facebook}}</td>
                        <td class="center"><i class="fa fa-trash-o fa-fw"></i><a href="{{route('delete_author',$author->id_author)}}"> Xóa</a></td>
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