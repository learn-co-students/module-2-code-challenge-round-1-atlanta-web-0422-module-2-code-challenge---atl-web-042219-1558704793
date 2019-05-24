class PowersController < ApplicationController

	before_action :set_power, only: [:show, :destroy]

  def index
    @powers = Power.all
  end

  def show
  end

  def new
  	@power = Power.new
  end

  def create
  	@power = Power.new(permit_params)
  	if @power.save
  		redirect_to power_path(@power)
  	else
  		render 'new'
  	end
  end

  def destroy
    @power.destroy
    redirect_to powers_path
  end

  private

  def permit_params
  	params.require(:power).permit(:name, :description)
  end

  def set_power
  	@power = Power.find(params[:id])
  end
end
