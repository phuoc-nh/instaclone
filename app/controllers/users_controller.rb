class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    puts '>>>>>>' + @user.inspect
  end
end
