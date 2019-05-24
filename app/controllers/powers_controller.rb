class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new
    @power.name = params["power"][:name]
    @power.description = params["power"][:description]
    if @power.save
      redirect_to power_path(@power)
    else
      render :new
    end
  end

  def search
    @power = Power.find(params[:id])
    redirect_to power_path(@power)
  end


end
