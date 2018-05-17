class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    true
  end

  def new?
    create?
  end

  def show?
    true
  end

  def destroy?
    record.user == user
  end

end
