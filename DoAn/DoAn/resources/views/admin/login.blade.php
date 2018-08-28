
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Khóa Học Lập Trình Laravel Framework 5.x Tại Khoa Phạm">
    <meta name="author" content="">
    <title>Đăng nhập</title>
    <link href="{{URL::to('admin-asset/bower_components/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::to('admin-asset/bower_components/metisMenu/dist/metisMenu.min.css')}}" rel="stylesheet">

    <link href="{{URL::to('admin-asset/dist/css/sb-admin-2.css')}}" rel="stylesheet">
    <link href="{{URL::to('admin-asset/bower_components/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{URL::to('admin-asset/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css')}}" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="{{URL::to('admin-asset/bower_components/datatables-responsive/css/dataTables.responsive.css')}}" rel="stylesheet">
</head>
    <div class="container">
		<div id="content" class="admin_login">
			
			<form action="{{route('admin')}}" method="post" class="beta-form-checkout">
			<input type="hidden" name="_token" value="{{csrf_token()}}">
				<div class="row">
					<div class="col-sm-3"></div>
					@if(Session::has('flag'))
					<div class="alert alert-{{Session::get('flag')}}">{{Session::get('message')}}</div>
					@endif
					<div>
						<h4>Đăng nhập</h4>
						<div class="space20">&nbsp;</div>
						<div class="form-block">
							<label for="email">Email</label>
							<input class="e_mail" type="email" name="email" required>
						</div>
						<div class="form-block">
							<label for="password">Mật khẩu</label>
							<input class="pass" type="password" name="password" required>
						</div>
						<div class="form-block">
							<button type="submit" class="btn btn-primary">Đăng nhập</button>
							
						</div>
					</div>
				</div>
			</form>
			
		</div>
  </div>
  
