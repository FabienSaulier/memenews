class ApplicationController < ActionController::Base

  # stay on the same page after login
  def after_sign_in_path_for(resource)
   request.referer
  end
  
  def after_sign_up_path_for(resource)
   request.referer
  end
  

end
