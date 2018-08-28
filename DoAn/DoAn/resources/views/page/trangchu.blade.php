
@extends('master')
@section('content')

<section class="slider">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="source/assets/dest/images/wrapp1.jpg" alt="Background 1">
                    <!-- <div class="carousel-caption">
                        <p class="main">This is slider 1 caption</p>
                        <p class="sub">This is sub caption</p>
                    </div> -->
                </div>
                <div class="item">
                    <img src="source/assets/dest/images/wrapp2.jpg" alt="Background 2">
                    <!-- <div class="carousel-caption">
                        <p class="main">This is slider 2 caption</p>
                        <p class="sub">This is sub caption</p>
                    </div> -->
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <div class="control-arrow left">
                    <i class="fas fa-angle-double-left"></i>
                </div>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <div class="control-arrow right">
                    <i class="fas fa-angle-double-right"></i>
                </div>
            </a>
       
    </section>

<div class="container">
    <div id="content" class="space-top-none">
        <div class="main-content">
            <div class="space60">&nbsp;</div>
            <div class="row">  
            <div class="col-sm-3">
            <ul class="aside-menu">
            @foreach($name_cate as $name)
                <li><a href="{{route('category',$name->id)}}">{{$name->name_cate}}</a></li>
               @endforeach
            </ul>


            </div>
                <div class="col-sm-9">                    
                    <div class="beta-products-list">
                        <h4>Danh mục sách</h4>
                        <div class="beta-products-details">
                            <p class="pull-left">{{$all_book->count()}} cuốn sách</p>
                            <div class="clearfix"></div>
                        </div>

                        <div class="row">
                            @foreach($all_book as $book)

                            
                            <div class="col-sm-3" style="padding:0px;">
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
		</div> <!-- #content -->
        </div>
	@endsection()