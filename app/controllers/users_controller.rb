class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render 'users/profiles/show.html.erb'
  end
end
