class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  helper :all # include all helpers, all the time
  helper_method :me?

  protected

  # @user を設定
  def set_user
    current_user
    if params[:user]
      if user = User.find_by_login(params[:user])
        @user = user
      else
        render :text => 'user not found' and return
      end
    else
      @user = @current_user
    end
  end

  # @userが自分かどうか
  def me?
    @user == @current_user
  end
end
