class UsersController < ApplicationController
  
  before_action :init_var
  before_action :require_login
  before_action :require_admin_user, only: [:index]
  after_action :clear_var
  
  def index
    # render plain: "hogehoge"
    render plain: @@var_a
  end

  def index2
    # render plain: "hogehoge"
    render plain: @@var_a
  end

  def show
  end

  private  
  def require_login
    @@var_a += "login! "
    # redirect_to login_url unless singed_in?
    # render plain: "fuga"
  end
  
  def require_admin_user
    @@var_a += "admin! "
  end

  def init_var
    @@var_a = "start:: "
  end
  def clear_var
    @@var_a = ""
  end
end
