class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @powers = Power.find(params[:id])
  end 
  
end
