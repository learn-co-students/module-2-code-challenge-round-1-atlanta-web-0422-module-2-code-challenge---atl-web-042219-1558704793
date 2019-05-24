class HeroinesController < ApplicationController

	before_action :set_heroine, only: [:show, :edit, :update, :destroy]

  def index
    # byebug
    @heroines = Heroine.all
  end

  def show
  end

  def new
  	@heroine = Heroine.new
  end

  def create
  	@heroine = Heroine.new(permit_params)
  	if @heroine.save
  		redirect_to heroine_path(@heroine)
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
  	if @heroine.update(permit_params)
  		redirect_to heroine_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@heroine.destroy
  	redirect_to heroines_path
  end

  private

  def set_heroine
  	@heroine = Heroine.find(params[:id])
  end

  def permit_params
  	params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
