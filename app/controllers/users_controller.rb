class UsersController < ApplicationController
  before_action :require_login, only: [:index]
  def index
    render plain: "hogehoge"
  end

  def show
  end

  private  
  def require_login
    # redirect_to login_url unless singed_in?
    # render plain: "fuga"
  end
end
