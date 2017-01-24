class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def admin?
    if current_user.email != "123456@qq.com"
      redirect_to root_path
      flash[:notice] = "you are not admin!"
    end
  end

end
