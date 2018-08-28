<?php

namespace App\Providers;
use Illuminate\Support\ServiceProvider;
use App\categories;
use App\Cart;
use Session;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('header',function($view){
            $cate = categories::all();
           
            $view ->with('cate',$cate);
        });
        view()->composer(['header','page.checkout'],function($view){
            if(Session('cart')){
                $oldCart = Session::get('cart');
                $cart = new Cart($oldCart);    
                $view->with(['cart'=>Session::get('cart'),'product_cart'=>$cart->items,
            'totalPrice'=>$cart->totalPrice,'totalQty'=>$cart->totalQty]);
            }
        });
        
        }
        
        
    

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
