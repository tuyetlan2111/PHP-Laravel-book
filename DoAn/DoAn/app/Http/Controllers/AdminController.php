<?php

namespace App\Http\Controllers;
use Validator;
use Auth;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use App\books;
use App\categories;
use App\User;
use App\receipt;
use App\receipt_detail;
use App\author;
use App\Cart;
use App\order;
use App\composer;
use App\detail_order;
use Session;
use Hash;

class AdminController extends Controller
{
    public function getSite(){
        $all_book = books::all();
        $user = User::all();
        $order = order::all();
        return view('admin.site',compact('all_book','user','order'));
    }
    public function getLoginAdmin(){
        return view('admin.login');
    }
    public function postLoginAdmin(Request $req){
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
        $credentials = array('email' =>$req->email,'password'=>$req->password,'type'=>1);
        if(Auth::attempt($credentials)){
            return redirect()->route('site')->with(['flag'=>'success','message'=>'Dang nhap thanh cong']);
        }
        else{
         return redirect()->back()->with(['flag'=>'danger','message'=>'Dang nhap khong thanh cong']);
        }
    }
 
    /**************category */
     public function getCate(){
        $name_cate = categories::all();     
        return view('admin.category.list',compact('name_cate'));
    }
    public function getAddCate(){
        return view('admin.category.add');
    }
    public function postAddCate(Request $req){
        $this->validate($req,
        [
            'name_cate'=>'required|unique:categories,name_cate|min:3|max:100'
        ],
        [
            'name_cate.required'=>'Bạn chưa nhập tên thể loại',
            'name_cate.unique'=>'Thể loại này đã có',
            'name_cate.min'=>'Tên thể loại phải có độ dài từ 3 đến 100 kí tự',
            'name_cate.max'=>'Tên thể loại phải có độ dài từ 3 đến 100 kí tự'
        ]);
        $cate = new categories;
        $cate->name_cate = $req->name_cate;
        $cate->save();       
        return redirect('add-cate')->with('thanhcong','Thêm thành công');
    }
    public function getEditCate($id){
        $cate = categories::find($id);
        return view('admin.category.edit',compact('cate'));
    }

    public function postEditCate(Request $req,$id){
        $cate = categories::find($id);
        $this->validate($req,
        [
            'name_cate'=>'required|unique:categories,name_cate|min:5|max:100'
        ],
        [
            'name_cate'=>'Bạn chưa nhập tên thể loại',
            'name_cate.unique'=>'Tên này đã tồn tại',
            'name_cate.min'=>'Tên thể loại phải có độ dài từ 3 đến 100 kí tự',
            'name_cate.max'=>'Tên thể loại phải có độ dài từ 3 đến 100 kí tự'
        ]);
        $cate->name_cate = $req->name_cate;
        $cate->save();       
        return redirect()->back()->with('thanhcong','Sửa thành công');
    }
    public function getDeleteCate($id){
        $cate = categories::find($id);
        $cate->delete();
        return redirect()->back()->with('thanhcong','Bạn đã xóa thành công');
    }

    public function postDeleteCate(){
       
    }



/***********author */

    public function getAuthor(){
        $author = author::all();
        return view('admin.author.list',compact('author'));
    }
    public function getAddAuthor(){
        return view('admin.author.add');
    }
    public function postAddAuthor(Request $req){

    $file_name = $req->file('img_author')->getClientOriginalName();
    $this->validate($req,
    [
        'name_author'=>'required|unique:author,name_author|min:5|max:100',
        'gmail'=>'required',
        // 'facebook'=>'required',
        // 'img_author'=>'required'
    ],
    [
        'name_author.required'=>'Bạn chưa nhập tên tác giả',
        'name_author.unique'=>'tác giả này đã có',
        'name_author.min'=>'Tên tác giả phải có độ dài từ 5 đến 100 kí tự',
        'name_author.max'=>'Tên tác giả phải có độ dài từ 5 đến 100 kí tự'
    ]);
    $author = new author;
    $author->name_author= $req->name_author;
    $author->gmail= $req->gmail;
    $author->facebook= $req->facebook;
    $author->img_author= $req->img_author;
    $req->file('img_author')->move('source/assets/dest/images',$file_name);
    $author->save();
    return redirect('add-author')->with('thanhcong','Thêm thành công');
}

public function getDeleteAuthor($id_author){
        $author = author::find($id_author);
        $author->delete();
        return redirect()->back()->with('thanhcong','Bạn đã xóa thành công');
}
public function getEditAuthor($id_author){
    $edit_author = author::find($id_author);
    return view('admin.author.edit',compact('edit_author'));
}

public function postEditAuthor(Request $req,$id_author){
    $cate = author::find($id_author);
    $this->validate($req,
    [
        'gmail'=>'required',
        'facebook'=>'required'
    ]);
    $author->gmail = $req->gmail;
    $author->facebook = $req->facebook;
    $author->save();       
    return redirect()->back()->with('thanhcong','Sửa thành công');
}
/****************book */
    public function getEditBook($id){
        $edit_book = books::find($id);
        $cate = categories::find($edit_book->id_category);   
        $all_cate= categories::all();    
        return view('admin.product.edit',compact('edit_book','cate','all_cate'));
    }
    public function postEditBook(Request $req,$id){
        $book = books::find($id);
        $file_name = $req->file('img_front')->getClientOriginalName();
        $this->validate($req,
        [
            'name'=>'required|min:5|max:100',
            'price'=>'required|min:4|max:20',
            'content'=>'required'
        ],
        [
            'name.required'=>'Bạn chưa nhập tên thể loại',
            'price.required'=>'Bạn chưa nhập giá',
            'content.required'=>'Bạn chưa nhập nội dung',
            'name.unique'=>'Thể loại này đã có',
            'name.min'=>'Tên thể loại phải có độ dài từ 5 đến 100 kí tự',
            'name.max'=>'Tên thể loại phải có độ dài từ 5 đến 100 kí tự',
            'price.min'=>'Giá phải có độ dài từ 4 đến 20 kí tự',
            'price.max'=>'Giá phải có độ dài từ 4 đến 20 kí tự'
        ]);
        $book->name = $req->name;
        $book->price = $req->price;
        $book->content = $req->content;
        $book->id_category = $req->category;
        $book->img_front = $file_name;      
        $book->save();
        return redirect('edit_book')->with('thanhcong','Sửa thành công');
    }
     public function getBook(){
        $show_book = books::join('categories','books.id_category','=','categories.id')
        // ->join('receipt_note_detail','books.id','=','receipt_note_detail.id_book')
        ->select('books.*','categories.name_cate')->get();       
        return view('admin.product.list',compact('show_book'));
    }
    public function getAddBook(){
        $cate = categories::all();
        $author = author::all();
        return view('admin.product.add', compact('cate','author'));
    }
    public function postAddBook(Request $req){
        $file_name = $req->file('img_front')->getClientOriginalName();
        $this->validate($req,
        [
            'name'=>'required|min:5|max:100',
            'price'=>'required|min:4|max:20',
            'content'=>'required',
        ],
        [
            'name.required'=>'Bạn chưa nhập tên thể loại',
            'price.required'=>'Bạn chưa nhập giá',
            'content.required'=>'Bạn chưa nhập nội dung',
            'name.unique'=>'Thể loại này đã có',
            'name.min'=>'Tên thể loại phải có độ dài từ 5 đến 100 kí tự',
            'name.max'=>'Tên thể loại phải có độ dài từ 5 đến 100 kí tự',
            'price.min'=>'Giá phải có độ dài từ 4 đến 20 kí tự',
            'price.max'=>'Giá phải có độ dài từ 4 đến 20 kí tự'
        ]);
       
        $book = new books;
        $book->name = $req->name;
        $book->price = $req->price;
        $book->content = $req->content;
        $book->id_category = $req->category;
        $book->img_front = $file_name;
        $book->save();
        return redirect('add_book')->with('thanhcong','Thêm thành công');
    }
public function getdeleteBook($id){
    $book = books::find($id);
    $compose = composer::find($id);
    if($book->id == $compose->id){
        $compose->delete();
        $book->delete();
    }
   
    return redirect()->back()->with('thanhcong','Bạn đã xóa thành công');
}


/*****************order */
    public function getBill(){
        $order = order::all();
        return view('admin.order.list',compact('order'));
    }
    
 
    public function getDeleteOrder($id_order){
        $order = order::find($id_order);
        $order->delete();
        return redirect()->back()->with('thanhcong','Bạn đã xóa thành công');
    }
    public function postDeleteOrder($id_order){

    }
    /*************nhập kho */
   public function getListReceipt(){
      $receipt = receipt::join('user','receipt_note.id_admin','=','user.id')
      ->select('receipt_note.*','user.username','user.phone')->get();
      return view('admin.receipt.list',compact('receipt'));
   }
   public function getDetailReceipt($id_bill){

    $receipt_detail = receipt_detail::where('id_bill',$id_bill)->join('books','receipt_note_detail.id_book','=','books.id')->get();
    return view('admin.receipt_detail.list',compact('receipt_detail'));
   }
    public function getAddReceipt(){
        
        return view('admin.receipt.add');
    }
}
