class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      cannot :read, User
      cannot :read, Career
      can :read, Teacher
      can :read, Student
    end
  end
end
