class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, Inventory
      can :create, Inventory, user_id: user.id
      can :update, Inventory, user_id: user.id
      can :destroy, Inventory, user_id: user.id
    end
  end
end
