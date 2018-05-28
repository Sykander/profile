class PostPolicy < ApplicationPolicy

  def new?
    raise Pundit::NotAuthorizedError, "You must be logged in to create a new post." unless user
  end

  def update?
    raise Pundit::NotAuthorizedError, "You must be the owner of this post to update it." unless user == @record.user
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
