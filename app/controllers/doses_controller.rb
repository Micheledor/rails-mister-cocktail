class DosesController < ApplicationController
  before_action :set_cocktail  
  def new
    @dose = Dose.new
  end
  
  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = @cocktail.id
    if @dose.save
      redirect_to cocktail_path(@dose)
    else
      render :new
    end 
  end
  
  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])  
  end
end
