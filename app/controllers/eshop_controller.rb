class EshopController < ApplicationController
    skip_before_action :authenticate_user!
    # after_filter :increase_quantity

    def index
        @banners = BannerManagement.all
        @products = Product.all.limit(6)
        @category = Category.where(parent_id: nil)
        

    end
    def shopping_cart
        
    end
    def login
        
    end
    def product_details
        @category = Category.find(params[:id])
        @products = @category.products
    end
    def shop
        
    end

    def blog
        
    end
    def blog_single
        
    end
    def cart
        @sum = 0
       @item = @cart.each do |item|
            @sum += item.price
       end
       @shipping_charge = 25
       @max_shipping_charge = 500
       @user = current_user
       @used_coupon = params[:code]
    #    cp = Coupon.find(5)
       cp = Coupon.find_by(code: @used_coupon)
    #    cp = Coupon.where(code: @used_coupon)
    @coupons = Coupon.all
    # coupons = []
    number_of_uses = 0
    @coupons.each do |c|
        # coupons << c.code
        # coupons.each do |ele|
        if @used_coupon == c.code
            # binding.pry
            if @user.coupons.include?(cp)
                puts "*****coupn already used************************"
            else
                        @percent_off = c.percent_off
                        @total = @sum - @percent_off
                       
                        puts "valid coupon applied"
                        use = c.number_of_uses += 1
                        @user.coupons << c
                        
                    end
                    
                else
                    puts "invalid"
                end
        end
        

      
    end
    def checkout
        
    end
    def contact_us
        
    end
    def error404
        
    end

       
    def add_to_cart
        id = params[:id].to_i
        a = session[:cart] << id unless session[:cart].include?(id)
        # binding.pry   @product_price_lists = [] 
       
        redirect_to root_path
    end
    
    def remove_from_cart
        id = params[:id].to_i
        session[:cart].delete(id)
        redirect_to root_path
    end
    def remove_from_cart1
        id = params[:id].to_i
        session[:cart].delete(id)
        redirect_to eshop_cart_path
    end

   
    def decrease_quantity
        @product_item = Product.find(params[:id])
        @product_item.quantity -= 1
        @product_item.save
    end

    private

    def increase_quantity
        @product_item = Product.find(params[:id])
        session[:quantity] = 0
        @quantity = session[:quantity]
        @quantity += 1

    
        
    end
end
