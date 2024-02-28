class RacesController < ApplicationController
  def show
    @race = Race.find(params[:id])
    @geoloaction_hash = Hash.new
    @geoloaction_hash["lat"] = @race.latitude
    @geoloaction_hash["lng"] = @race.longitude
    @historical_figure = @race.historical_figure
    @car_type = @race.car_type
  end

  def index
    @races = Race.all
  end

  def new
    @figure = HistoricalFigure.find(params[:id])
    @race = Race.new
  end

  def create
    @race = Race.new(race_params)
    @race.user = current_user
    @race.historical_figure = HistoricalFigure.find(params[:race][:historical_figure_id])
    if @race.save
      redirect_to @race
    else
      render :new
    end
  end

  private

  def race_params
    params.require(:race).permit(:historical_figure_id, :car_type, :location_enum)
  end
end
