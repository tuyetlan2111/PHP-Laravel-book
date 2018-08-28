@extends('master')
@section('content')

<div class="container">
    <div id="content" class="space-top-none">
        <div class="main-content">
            <div class="space60">&nbsp;</div>
            <div class="row">  
            <div class="col-sm-3">
           


            </div>
                <div class="col-sm-9">                    
                    <div class="beta-products-list">
                        <h4>Tìm kiếm</h4>
                        <div class="beta-products-details">
                            <p class="pull-left">Tìm thấy {{count($book)}}</p>
                            <div class="clearfix"></div>
                        </div>

                        <div class="row">
                            @foreach($book as $book)                          
                            <div class="col-sm-3">
                                <div class="single-item">
                                    <div class="single-item-header">
                                        <a href="{{route('detail',$book->id)}}"><img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/images/{{$book->img_front}}" alt=""></a>
                                    </div>
                                    <div class="single-item-body">
                                        <p class="item-title">{{$book->name}}</p>
                                        <p class="single-item-price">
                                            <span>{{$book->price}}</span>
                                        </p>
                                    </div>
                                    <div class="single-item-caption">
                                        <a class="add-to-cart pull-left" href="{{route('themgiohang',$book->id)}}"><i class="fa fa-shopping-cart"></i></a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                      
                    </div> <!-- .beta-products-list -->

                    <div class="space50">&nbsp;</div>
				</div> <!-- end section with sidebar and main content -->


			</div> <!-- .main-content -->
		</div>
@endsection