# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, ActiveAdmin::Page, name: "Dashboard", namespace_name: "drad"
  end
end
