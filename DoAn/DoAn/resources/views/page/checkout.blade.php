
@extends('master');
@section('content');


<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Đặt hàng</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb">
					<a href="{{route('trang-chu')}}">Trang chủ</a> / <span>Đặt hàng</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
</div>
	
	<div class="container">
		<div id="content">
		@if(Auth::check())
		@if(count($errors) > 0)
                    <div class="alert alert-danger">
                        @foreach($errors ->all() as $err)
                        {{$err}}
                        @endforeach
        @endif
        @if(Session::has('thanhcong'))
                   <div class="alert alert-success">{{Session::get('thanhcong')}}</div>
        @endif
				   
			<form action="{{route('dat_hang')}}" method="post" class="beta-form-checkout">
			<input type="hidden" name="_token" value="{{csrf_token()}}"/>
				<div class="row">
					<div class="col-sm-6">
						<h4>Thông tin khách hàng</h4>
						<div class="space20">&nbsp;</div>
						
						<div class="form-block">
							<label for="your_last_name">Họ và tên</label>
							<input type="text" id="name" name="username" value="
							@if(Auth::check()) {{Auth::user()->username}} @else " " @endif" required>
						</div>

						<div class="form-block">
							<label for="adress">Địa chỉ*</label>
							<input type="text" id="address" name="address" value="@if(Auth::check()) {{Auth::user()->address}} @else " " @endif" required>	
						</div>
						<div class="form-block">
							<label for="email">Email*</label>
							<input type="email" id="email" name="email" required value="@if(Auth::check()) {{Auth::user()->email}} @else " " @endif">
						</div>

						<div class="form-block">
							<label for="phone">Điện thoại*</label>
							<input type="text" id="phone" name="phone" value="@if(Auth::check()) {{Auth::user()->phone}} @else " " @endif"required>
						</div>
					</div>
					<div class="col-sm-6 order" style="padding:0px;">
						<div class="your-order">
							<div class="your-order-head"><h5>Đơn hàng của bạn</h5></div>
							<div class="your-order-body">
								<div class="your-order-item">
									<div>
									@if(Session::has('cart'))
					<table>
					<thead>
                    <tr align="center">
                        <th>Tên sản phẩm</th>
						<th>Hình ảnh</th>
                        <th>Giá</th>
						<th>Số lượng</th>
						<th>Tổng sp </th>
						<th>Xóa</th>
                    </tr>
                </thead>
				
			
               
			   <tbody>
			   <?php $totalprice = 0;
			   foreach($product_cart as $cart) {
				   $totalprice += ($cart['qty']) * ($cart['item']['price']);
			   }
			 
			 ?>
						@foreach($product_cart as $cart)
					<tr>
							<td><p class="font-large" style="font-size: 14px; color:#000000;">{{$cart['item']['name']}}</p></td>	
							<td><img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/images/{{$cart['item']['img_front']}}" alt="" class="pull-left" style="height:60px !important;"></td>				
							<td><p class="font-large price_one_pr" data-value="{{$cart['item']['price']}}" style="font-size: 14px; color:#000000;">{{number_format($cart['item']['price'])}} đồng</p></td>	
							<td><span class="your-order-info" style="width: 114px;">	

<div class="quantity">
      <button onclick="changeQty(this)" class="minus-btn" type="button" name="button"><img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/img_icon/minus.png" style="height:17px !important;"></button>
      <input class="qty-goods" type="text" data-id="{{$cart['item']['id']}}" name="qty" value="{{$cart['qty']}}">
      <button onclick="changeQty(this)" class="plus-btn" type="button" name="button"><img src="http://localhost:8012/DoAn/DoAn/public/source/assets/dest/img_icon/add.png" style="height:17px !important;"></button>
</div>
</span></td>	
<td><p class="font-large total-price-row" data-value="{{($cart['qty']) * ($cart['item']['price'])}}" style="font-size: 14px; color:#000000;"><?php echo ($cart['qty']) * ($cart['item']['price'])?> đồng</p></td>
							<td><a class="delete" href="{{route('xoagiohang',$cart['item']['id'])}}"><i class="fa fa-times"></i>Xóa</a></td>		
                    </tr>
						@endforeach
				</tbody>
            </table>
		@endif
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="your-order-item">
									<div class="pull-left"><p class="your-order-f18">Tổng tiền: </p></div>
									<div class="pull-right"><h5 class="color-black"><?php echo $totalprice;?></h5></div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="text-center"><button type="submit" class="beta-btn primary" href="#">Thanh toán</button></div>
						</div>
					</div>
				</div>
			</form>
			
		@else
		<div>Bạn cần phải đăng nhập</div>
		@endif
		</div>

		<script>
		var abcd;
			function changeQty(elm) {
				var qty = elm.parentElement;
				var abc = qty.getElementsByClassName("qty-goods")[0];
				//console.log(qty.val());
				var giatri = abc.value;
				if (elm.className == "minus-btn") {					
					giatri--;
					if (giatri == 0) {
						giatri = 1;
						alert("Vuot qua gioi han");
					}
				} else {
					giatri++;
					if (giatri>10) {
						giatri = 10;
						alert("Vuot qua so luot");
					}
				}
				abc.value = giatri;
				var idRow = abc.getAttribute("data-id");

				

				var jsonObj = JSON.parse('<?php echo json_encode(Session::get('cart'))?>');

				// for (var i=0; i<jsonObj.items.length; i++) {
				// 	if (jsonObj.items[i] == idRow) {
				// 		jsonObj.items[i].qty = giatri;
				// 		break;
				// 	}
				// }
				// console.log(jsonObj.toString());
				var rowElm = qty.parentElement.parentElement.parentElement;
				var totalElm = rowElm.getElementsByClassName("total-price-row")[0];
				var priceElm = rowElm.getElementsByClassName("price_one_pr")[0];
				totalElm.innerHTML = giatri * priceElm.getAttribute("data-value");
				totalElm.setAttribute("data-value", giatri * priceElm.getAttribute("data-value"));
				abcd = priceElm;
				var elms = document.getElementsByClassName("total-price-row");
				var sum = 0;
				for (var i =0; i<elms.length; i++) {
					sum = parseInt(sum) + parseInt(elms[i].getAttribute("data-value"));
				}
				document.getElementsByClassName("color-black")[0].innerHTML = sum;
			}
			
		
		</script>
	</div> 
	
	@endsection