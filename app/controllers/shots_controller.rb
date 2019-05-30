class ShotsController < ApplicationController
  def index
    @shots = Shot.all
  end

  def show
    @shot = Shot.find(params[:id])
  end

  def new
    @shot = Shot.new
  end

  def create
    @shot = current_user.shots.new(shot_params)
    if @shot.save
      redirect_to shot_path(@shot)
    else
      render "shots/new"
    end
  end


  def shot_params
    params.require(:shot).permit(:photo, :shot_on, :price_cents)
  end

end
