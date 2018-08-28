@extends('master')
@section('content')
<div class="inner-header">
		<div class="container">
			<!-- <div class="pull-left">
				<h6 class="inner-title">Sách {{$sp_id->name}}</h6>
			</div> -->
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="{{route('trang-chu')}}">Trang chủ</a> / <span>Chi tiết sản phẩm</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container">
	<div id="content">
			<div class="row">
				<div class="col-sm-9">
					<div class="row">
						<div class="col-sm-4">
							<img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/images/{{$sp_id->img_front}}" alt="">
						</div>
						<div class="col-sm-8">
							<div class="single-item-body">
								<p class="single-item-title">{{$sp_id->name}}</p>
								<p class="price_detail"><span>{{$sp_id->price}}</span></p>
								

								<div id="giftMessage">
									<div class="product-addon-item product-gift" style="margin-bottom:20px;">
										<img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/img_icon/gift.png" class="icon" width="28" height="28" alt="Dịch vụ gói quà, tặng quà" title="">
										<p>
											<b>Bạn muốn gói quà và gửi thiệp?</b>
											Hãy chọn hình thức gói quà ở bước thanh toán, Shop sẽ thực hiện gói quà và in thiệp với thông điệp riêng của bạn! -
										</p>
									</div>
									<div class="single-item-caption">
                                        <a class="cart_detail" href="{{route('themgiohang',$sp_id->id)}}">Thêm vào giỏ hàng</a>
                                        <div class="clearfix"></div>
                                    </div>
									<!-- <div class="box">
										<div class="quantity">
											<p class="label">Số lượng:</p>
											<p class="number-input">
												</p><div>
													<button class="btn-down" type="button">-</button>
													<input id="qty" type="tel" name="qty" value="1" min="1" max="100" class="form-control">
													<button class="btn-up" type="button">+</button>
												</div>
											<p></p>
											<button class="add" type="submit"><a href="{{route('themgiohang',$sp_id->id)}}">Chọn mua</a>
											<i class="fas fa-cart-plus"></i></button>
										<div>
                                            </div> -->
								
    <div>
    </div>
</div></div></div>

						<div class="woocommerce-tabs col-sm-12">
							<ul class="tabs">
								<li><a href="#tab-description">Mô tả</a></li>
								<!-- <li><a href="#tab-reviews">Reviews (0)</a></li> -->
							</ul>

							<div class="panel" id="tab-description">
								<p>{{$sp_id->content}}</p>
							</div>
						</div>
					
					
					
</div>
</div>

				
				
						<div class="beta-products-list col-sm-12">
								<h4>Sản phẩm cùng loại</h4>

								<div class="row">
									@foreach($sp_tt as $sp)
									<div class="col-sm-4">
										<div class="single-item">
											<div class="single-item-header">
												<a href="{{route('detail',$sp->id)}}"><img src="{{URL::to('source/assets/dest/images')}}/{{$sp->img_front}}" alt=""></a>
											</div>
											<div class="single-item-body">
												<p class="item-title">{{$sp->name}}</p>
												<p class="single-item-price">
													<span>{{$sp->price}}</span>
												</p>
											</div>
											<div class="single-item-caption">
												<a class="add-to-cart pull-left" href="{{route('themgiohang',$sp->id)}}" style="margin-left: 76px;"><i class="fa fa-shopping-cart"></i></a>
												<!-- <a class="beta-btn primary" href="product.html">Chi tiết<i class="fa fa-chevron-right"></i></a> -->
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									@endforeach
							</div> <!-- .beta-products-list -->
							<div class="row">{{$sp_tt->links()}}</div>
						
					</div>
				</div>
				<!-- <div class="col-sm-3 aside">
					<div class="widget">
						<h3 class="widget-title">Best Sellers</h3>
						<div class="widget-body">
							<div class="beta-sales beta-lists">
								<div class="media beta-sales-item">
									<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/1.png" alt=""></a>
									<div class="media-body">
										Sample Woman Top
										<span class="beta-sales-price">$34.55</span>
									</div>
								</div>
								<div class="media beta-sales-item">
									<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/2.png" alt=""></a>
									<div class="media-body">
										Sample Woman Top
										<span class="beta-sales-price">$34.55</span>
									</div>
								</div>
								<div class="media beta-sales-item">
									<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/3.png" alt=""></a>
									<div class="media-body">
										Sample Woman Top
										<span class="beta-sales-price">$34.55</span>
									</div>
								</div>
								<div class="media beta-sales-item">
									<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/4.png" alt=""></a>
									<div class="media-body">
										Sample Woman Top
										<span class="beta-sales-price">$34.55</span>
									</div>
								</div>
							</div>
						</div>
					</div> <!-- best sellers widget -->
					<!-- <div class="widget">
						<h3 class="widget-title">New Products</h3>
						<div class="widget-body">
							<div class="beta-sales beta-lists">
								<div class="media beta-sales-item">
									<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/1.png" alt=""></a>
									<div class="media-body">
										Sample Woman Top
										<span class="beta-sales-price">$34.55</span>
									</div>
								</div>
								<div class="media beta-sales-item">
									<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/2.png" alt=""></a>
									<div class="media-body">
										Sample Woman Top
										<span class="beta-sales-price">$34.55</span>
									</div>
								</div>
								<div class="media beta-sales-item">
									<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/3.png" alt=""></a>
									<div class="media-body">
										Sample Woman Top
										<span class="beta-sales-price">$34.55</span>
									</div>
								</div>
								<div class="media beta-sales-item">
									<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/4.png" alt=""></a>
									<div class="media-body">
										Sample Woman Top
										<span class="beta-sales-price">$34.55</span>
									</div>
								</div>
							</div>
						</div>
					</div> best sellers widget
				</div> -->
			<div>
				
		</div>
	</div> <!-- #content -->
</div>
</div> 
    @endsection
    