<?php

namespace App\Http\Controllers;
use App\books;
use App\categories;
use App\User;
use Auth;
use App\order;
use App\detail_order;
use App\Cart;
use Session;
use Hash;
use Response;


use Illuminate\Http\Request;

class PageController extends Controller
{
    public function getIndex(){
      
       $name_cate = categories::all();
       $all_book = books::all();
      return view('page.trangchu',compact('name_cate','all_book'));
    }
    public function getCate($type){
        $name_cate = categories::all();
       $sp_cate = books::where('id_category',$type)->paginate(9);
       $cate_sp = categories::where('id',$type)->first();
        return view('page.category',compact('sp_cate','name_cate','cate_sp'));
    }
    public function getDetail(Request $req){
        $sp_id = books::where('id',$req->id)->first();
        $cate = books::join('categories', 'books.id_category', '=', 'categories.id')->get();
        $sp_tt = books::where('id_category', $sp_id->id_category)->paginate(3);
        return view('page.detail',compact('sp_id','sp_tt','cate'));
    }

    public function getContact(){
        return view('page.contact');
    }
    public function getAddtoCart(Request $req, $id){
        $product = books::find($id);
        $oldCart = Session('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->add($product,$id);
        $req->session()->put('cart',$cart);
        return redirect()->back();
    }
    public function getDelItemCart($id){
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);
        if(count($cart->items)> 0){
            Session::put('cart',$cart);
        }
        else{
            Session::forget('cart');
        }
        
        return redirect()->back();
    }

    public function postCheckout(Request $req){
        $cart= Session::get('cart');
        $bill = new order;
        $bill->id_customer = Auth::user()->id;
        $bill->name_receiver = Auth::user()->username;
        $bill->address_receiver = Auth::user()->address;
        $bill->phone_receiver = Auth::user()->phone;
        $bill->email_receiver = Auth::user()->email;  
        $bill->save();
        
        foreach($cart->items as $key=>$value){
            $bill_detail= new detail_order;
            $bill_detail->id_order = $bill->id;
            $bill_detail->id_book = $key;
            $bill_detail->count = $value['qty'];
            $bill_detail->price = $value['price'];
            $bill_detail->save();
        }
        Session::forget('cart');
        return redirect()->route('trang-chu')->with('thongbao','Đặt hàng thành công');
    }

    public function getCheckout(){
        if(Session::has('cart')){
            $oldCart = Session::get('cart');
            $cart = new Cart($oldCart);
            return view('page.checkout',['cart'=>Session::get('cart'),'product_cart'=>$cart->items,
            'totalPrice'=>$cart->totalPrice,'totalQty'=>$cart->totalQty]);
        }     
    }

    public function getLogin(){

        return view('page.login');
    }
    public function postLogin(Request $req){

        $this->validate($req,
        [
            'email'=>'required|email',
            'password' =>'required|min:6|max:20'
        ],
        [
            'email.required' =>'Vui lòng nhập e mail',
            'email.email'=> 'Email không đúng định dang',
            'password.required'=>'Vui lòng nhập mật khẩu',
            'password.min'=>'Mật khẩu ít nhất 6 kí tự',
            'password.max'=>'Mật khẩu tối đa 20 kí tự'
        ]
        
        
        );
       $credentials = array('email' =>$req->email,'password'=>$req->password,'type'=>2);
       if(Auth::attempt($credentials)){
           return redirect()->back()->with(['flag'=>'success','message'=>'Dang nhap thanh cong']);
       }
       else{
        return redirect()->back()->with(['flag'=>'danger','message'=>'Dang nhap khong thanh cong']);
       }
    }


    public function getSignup(){

        return view('page.signup');
    }

    public function postSignup(Request $req){

        $this->validate($req,
        [
            'username'=>'required',
            'password' =>'required|min:6|max:20',
            're_password'=>'required|same:password',
            'email'=>'required|email|unique:customer,email',
            'phone'=>'required',
            'address'=>'required'         
        ],
        [
            'email.required' =>'Vui lòng nhập email',
            'email.email'=>'Không đúng định dạng email',
            'email.unique'=>'Email đã có người sử dụng',
            'password.required'=>'Vui lòng nhập mật khẩu',
            're_password.same'=>'Mật khẩu không giống nhau',
            'password.min'=>'Mật khẩu ít nhất 6 kí tự'
        ]);
        $customer = new User;
        $customer->email = $req->email;
        $customer->username = $req->username;     
        $customer->address = $req->address;
        $customer->phone = $req->phone;
        $customer->password = Hash::make($req->password);     
        $customer->save();
        return redirect()->back()->with('thanhcong','Tạo tài khoản thành công');
    }
    
    public function getLogout(){
        Auth::logout();
        return redirect()->route('trang-chu');

    }

    public function getSearch(Request $req){
        $book = books::where('name','like','%'.$req->key.'%')->orWhere('price',$req->key)->get();
        return view('page.search',compact('book'));
    }
}
