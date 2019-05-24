class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    if params[:q].present?
      @heroines = @heroines.select { |h| h.power.name == params[:q] }
      if @heroines.blank?
        @error = "No heroines with the super power: #{params[:q]}"
        @heroines = Heroine.all
      end
    end
    
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(strong_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  private
    def strong_params
      params.require(:heroine).permit(:name, :super_name, :power_id)
    end
end
