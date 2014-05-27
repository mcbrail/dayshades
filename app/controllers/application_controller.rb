class ApplicationController < ActionController::Base
  protect_from_forgery
<<<<<<< HEAD

  private
    def current_cart
      Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end
=======
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
end
