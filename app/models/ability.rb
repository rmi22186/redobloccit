class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role? :member
      can :manage, Post, :user_id => user.id
      can :manage, Comment, :user_id => user.id
      can :create, Vote
      can :manage, Favorite, :user_id => user.id
      can :read, Topic
    end

    if user.role? :moderator
      can :destroy, Post
      can :destroy, Comment
    end

    if user.role? :admin
      can :manage, :all
    end

    can :read, Topic, public: true
    can :read, Post 
  end
end