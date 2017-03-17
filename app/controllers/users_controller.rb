class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = if params[:id].nil?
              current_user
            else
              User.find(params[:id])
                                end
    @items = @user.items
  end
end
