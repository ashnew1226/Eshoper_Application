class EshopController < ApplicationController
    skip_before_action :authenticate_user!
   
    def index
        @banners = BannerManagement.all
        @products = Product.all.limit(6)
        @category = Category.where(parent_id: nil)
        # 593451385883640 fb app id
        # b3ca5228e9d1b1d2445767ecd5d5db8e

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
end
