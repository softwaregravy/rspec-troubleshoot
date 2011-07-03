class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :redirect_to_candies

  def redirect_to_candies 
    redirect_to candies_url
  end 

  def i_assign_a_value
    @my_value = Rails.cache.fetch('value_cache') {
      i_can_be_stubbed_to_raise_an_error
    }
  end 

  def i_can_be_stubbed_to_raise_an_error
    return 5
  end 
end
