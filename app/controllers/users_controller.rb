class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render 'users/profiles/show.html.erb'
  end

  def showMe
    @user = current_user
    @posts = policy_scope(Post)
    authorize User
    render 'users/profiles/show.html.erb'
  end
end
