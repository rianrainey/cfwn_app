class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_admin
    unless user_signed_in? and current_user.has_role? "Admin"
      flash[:error] = "You must be an admin to access this section."
      redirect_to root_path # halts request cycle
    end
  end
end
