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
      scope.where(@record.user_id == @user.id)
    end
  end
end
