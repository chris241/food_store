class AvatarsController < ApplicationController
  def create
  	@Client = current_client.id
    current_client.avatar.attach(params[:avatar])
    redirect_to '/profiles'
  end
end
