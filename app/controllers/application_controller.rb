class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def admin_required
    if !current_user.email.admin?
      redirect_to root_path
      flash[:notice] = "you are not admin!"
    end
  end

end
