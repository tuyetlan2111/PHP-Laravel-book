@extends('master')
@section('content')
<div class="inner-header">
		<div class="container">
			<div class="pull-right">
				<div class="beta-breadcrumb">
					<a href="index.html">Trang chủ</a> / <span>Đăng nhập</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
    </div>
    <div class="container">
		<div id="content" class="login">
			
			<form action="{{route('login')}}" method="post" class="beta-form-checkout">
			<input type="hidden" name="_token" value="{{csrf_token()}}">
				<div class="row">
					<div class="col-sm-3"></div>
					@if(Session::has('flag'))
					<div class="alert alert-{{Session::get('flag')}}">{{Session::get('message')}}</div>
					@endif
					<div class="col-sm-6" style="margin-left: -50px;">
						<h4>Đăng nhập</h4>
						<div class="space20">&nbsp;</div>

						
						<div class="form-block">
							<label for="email">Email</label>
							<input type="email" name="email" required>
						</div>
						<div class="form-block">
							<label for="password">Mật khẩu</label>
							<input type="password" name="password" required>
						</div>
						<div class="form-block">
							<button type="submit" class="btn btn-primary">Đăng nhập</button>
							
						</div>
						<div class="form-block" style="display: inline-block; font-size: 19px; padding-left: 146px;">
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</form>
			
		</div> <!-- #content -->
  </div>
  
	</div> <!-- .container -->


@endsection