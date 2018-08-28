
@extends('admin.layout.admin');
@section('content');
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Category
                    <small>List</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th style="width: 28px;">ID</th>
                        <th style="width: 26%;">Tên sách</th>
                        <th>Tác giả</th>
                        <th>Thể loại</th>
                        <th>Giá</th>
                        <th style="width: 16%;">Hình trước</th>
                        <th>Hình sau</th>
                        <th>Số lượng tồn</th>
                        <th>Xóa</th>
                        <th style="width: 7%;">Sửa</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($show_book as $book)
                    <tr class="odd gradeX" align="center">
                        <td>{{$book->id}}</td>
                        <td>{{$book->name}}</td>
                        <td>tg</td>
                        <td>{{$book->name_cate}}</td>
                        <td>{{$book->price}}</td>      
                        <td><img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/images/{{$book->img_front}}" alt="" style=" width: 24%;"></td>
                        <td><img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/images/{{$book->img_after}}" alt="" style=" width: 24%;"></td>
                        <td>{{$book->count}}</td>   
                        <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{{route('delete_book',$book->id)}}">Xóa</a></td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{route('edit_book',$book->id)}}">Sửa</a></td>
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