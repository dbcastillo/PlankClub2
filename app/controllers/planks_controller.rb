class PlanksController < ApplicationController
  def index
    @planks = Plank.all
  end

  def show
    @plank = Plank.find(params[:id])
  end

  def new
    @plank = Plank.new
  end

  def create
    @plank = Plank.new(plank_params)
    if @plank.save
      redirect_to plank_path(@plank)
    else
      render :new
    end
  end

  def edit
    @plank = Plank.find(params[:id])
  end

  def update
    @plank = Plank.find(params[:id])
    if @plank.update(plank_params)
      redirect_to plank_path(@plank)
    else
      render :edit
    end
  end

  def destroy
    @plank = Plank.find(params[:id])
    @plank.destroy
    redirect_to planks_path
  end

  private
  def plank_params
    params.require(:plank).permit(:planktype)
  end
end
