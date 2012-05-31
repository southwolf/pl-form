class Ability
  include CanCan::Ability

  # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  def initialize(user)
    if user.present? and user.admin?
      can :manage, :all
    else
      can :read, :all if user.present?
      can :create, :all if user.present?
      can [:update, :destroy], :all if user.present? and user.supervisor?
      can :update, :all do |r|
        r.create_badge == user.badge if user.present?
      end
    end
  end
end
