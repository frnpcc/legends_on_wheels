class RacesController < ApplicationController

  def index
    @races = Race.all
  end

  def show
    @race = Race.find(params[:id])
    @geolocation_hash = {}
    @geolocation_hash[:lat] = @race.latitude
    @geolocation_hash[:lng] = @race.longitude
    @geolocation_hash[:marker_html] = render_to_string(partial: "marker", locals: { race: @race })

    @historical_figure = @race.historical_figure
    @car_type = @race.car_type
  end

  def new
    @figure = HistoricalFigure.find(params[:id])
    @race = Race.new
  end

  def create
    @race = Race.new(race_params)
    @race.user = current_user
    @race.historical_figure = HistoricalFigure.find(params[:historical_figure_id])
    if @race.save
      redirect_to @race
    else
      render :new
    end
  end

  def result
    redirect_to ["win", "win", "loose"].sample == "win" ? win_path : loose_path
  end

  def win
    @should_render_navbar = false
  end

  def loose
    @should_render_navbar = false
  end

  private

  def race_params
    params.require(:race).permit(:historical_figure_id, :car_type, :location_enum, :location)
  end
end
