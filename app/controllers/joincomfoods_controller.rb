class JoincomfoodsController < ApplicationController
  def destroy
  @join = JoinComFood.find(params[:id]).destroy
  end
end
