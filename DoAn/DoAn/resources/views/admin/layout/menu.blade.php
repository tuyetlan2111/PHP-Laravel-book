<div class="col-md-3 navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li class="sidebar-search">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                    <!-- /input-group -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-dashboard fa-fw"></i>Trang chủ</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Thể loại<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('admin-cate')}}">Danh sách thể loại</a>
                        </li>
                        <li>
                            <a href="{{route('add-cate')}}">Thêm thể loại</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-cube fa-fw"></i>Sản phẩm<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('show_book')}}">Danh sách sản phẩm</a>
                        </li>
                        <li>
                            <a href="{{route('add_book')}}">Thêm sảm phẩm</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-users fa-fw"></i>Tác giả<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('show_author')}}">Danh sách tác giả</a>
                        </li>
                        <li>
                            <a href="{{route('add-author')}}">Thêm tác giả</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-users fa-fw"></i>Người dùng<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#">Danh sách người dùng</a>
                        </li>
                        <li>
                            <a href="#">Thêm người dùng</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>

                 <li>
                    <a href="#"><i class="fa fa-users fa-fw"></i>Đơn hàng<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('bill')}}">Danh sách đơn hàng</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-users fa-fw"></i>Kho<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('list_receipt')}}">Phiếu nhập kho</a>
                        </li>
                        <li>
                            <a href="">Phiếu xuất kho</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
</div>
<!-- <div class="col-md-9" style="float:right;margin-top: 100px;">
<div class="stati user"></div>
<div class="stati book"></div>
<div class="stati number_user"></div> -->
</div>