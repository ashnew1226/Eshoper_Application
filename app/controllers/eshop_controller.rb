class EshopController < ApplicationController
    skip_before_action :authenticate_user!


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
        
    end
    def checkout
        
    end
    def contact_us
        
    end
    def error404
        
    end

       
    def add_to_cart
        id = params[:id].to_i
        session[:cart] << id unless session[:cart].include?(id)
        redirect_to root_path
    end
    
    def remove_from_cart
        id = params[:id].to_i
        session[:cart].delete(id)
        redirect_to root_path
    end
end
