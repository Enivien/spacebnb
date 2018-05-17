class SpaceshipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def new?
    create?
  end

  def index?
    true
  end

  def show?
    true
  end

  def destroy?
    record.user == user
  end

end
