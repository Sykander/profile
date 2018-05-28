class PostPolicy < ApplicationPolicy

  def new?
    raise Pundit::NotAuthorizedError, "You must be logged in to create a new post." unless user
    user
  end

  def edit?
    if user
      return @record.user_id === @user.id
    else
      return false
    end
  end

  def update?
    raise Pundit::NotAuthorizedError, "You must be the owner of this post to update it." unless @user.id == @record.user_id
    @user.id == @record.user_id
  end

  class Scope < Scope
    def resolve
      posts = Post.all
      scope = []
      posts.each do |post|
        if user && post.user_id == @user.id then scope.push(post)
        end
      end
      scope
    end
  end
end
