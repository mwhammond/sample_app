module SessionsHelper
  
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    current_user = user
    #this will be accesible in views and controllers
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def current_user=(user) # means that writing current_user = is autoamtically converted to use this method current_user=
    @current_user = user
  end
  
  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
  # that is an 'or equals' only set the current user if indefined
  # so it calls User.find by the first time but not again
  
  def sign_out
    current_user = nil
    cookies.delete(:remember_token)
  end
end
