class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :redirect_to_candies

  def redirect_to_candies 
    redirect_to candies_url
  end 
end
