class UserPolicy < ApplicationPolicy

  def showMe?
    raise Pundit::NotAuthorizedError, "You must be logged in to view your own profile" unless user
    user
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
