class EshopController < ApplicationController
    skip_before_action :authenticate_user!
   
    def index
        @banners = BannerManagement.all
        @category = Category.all
        @products = Product.all

    end
    def login
        
    end
    def product_details
        
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
end
