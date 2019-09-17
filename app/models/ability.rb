# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(client,gerant)
  	client ||= Client.new 
    can :manage, Reservation
    can :read, Client
    can :manage, Client, id: current_client.id
    can :read, ActiveAdmin::Page, name: "Dashboard", namespace_name: "admin"
  end
end
