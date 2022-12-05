class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :initailize_session
    before_action :load_cart


    private

    def initailize_session
        session[:cart] ||= [] # empty cart = empty array
    end

    def load_cart
        @cart = Product.find(session[:cart]) rescue nil
    end
end
