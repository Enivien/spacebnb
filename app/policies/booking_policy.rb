class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    create?
  end

  def create?
    true
  end

end
