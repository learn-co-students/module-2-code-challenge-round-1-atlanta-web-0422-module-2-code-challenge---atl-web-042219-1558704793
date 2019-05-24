class HeroinesController < ApplicationController
  
    def index
      @heroines = Heroine.all
    end

    def new
      @heroine = Heroine.new
    end 

    def show 
      @heroines = Heroine.find(params[:id])
    end 

    def create
      @heroine = Heroine.new(heroine_params)
      if @heroine.save
        redirect_to heroine_path(@heroine)
      else 
        render :new
      end 
    end
  end 

  private 
  
  def heroine_params 
    @heroine = params.require(:heroine).permit(:name, :super_power, :power_id)

end
