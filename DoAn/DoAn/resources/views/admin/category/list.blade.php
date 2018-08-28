
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
                <h1 class="page-header">Thể loại
                    <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Xóa</th>
                        <th>Sửa</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($name_cate as $name)
                    <tr class="odd gradeX" align="center">
                        <td>{{$name->id}}</td>
                        <td>{{$name->name_cate}}</td>
                        <td class="center"><i class="fa fa-trash-o fa-fw"></i><a href="{{route('delete-cate',$name->id)}}"> Xóa</a></td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{route('edit-cate',$name->id)}}">Sửa</a></td>
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