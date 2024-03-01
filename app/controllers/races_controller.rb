class RacesController < ApplicationController
  before_action :set_race, only: [:show]
  before_action :set_new_race, only: [:new, :create]
  before_action :set_historical_figure, only: [:new, :create, :result]
  before_action :set_race_for_result, only: [:result]

  def index
    @races = Race.all
    @current_score = current_user.score
  end

  def show
    @geolocation_hash = geolocation_hash(@race)
    @historical_figure = @race.historical_figure
    @car_type = @race.car_type
  end

  def new; end

  def create
    if @race.save
      redirect_to @race, notice: 'Race was successfully created. 🏁'
    else
      render :new
    end
  end

  def win
    @should_render_navbar = false
  end

  def loose
    @should_render_navbar = false
  end

  def result
    if win?
      increment_score!
      redirect_to win_path
    else
      decrement_score!
      redirect_to loose_path
    end
  end

  def win?
    base_chance = 0.5
    figure_strength_modifier = strength_modifier(@race.historical_figure)
    car_compatibility_score = car_compatibility_modifier(@race.historical_figure, @race.car_type)

    total_modifier = figure_strength_modifier + car_compatibility_score
    final_chance = calculate_final_chance(base_chance, total_modifier)

    rand < final_chance
  end

  private

  def strength_modifier(historical_figure)
    (historical_figure.strength || 0) * 0.02
  end

  def car_compatibility_modifier(historical_figure, car_type)
    compatibility_scores = historical_figure.car_compatibility || {}
    (compatibility_scores[car_type.to_s] || 0) * 0.01
  end

  def calculate_final_chance(base_chance, total_modifier)
    [[base_chance + total_modifier, 1].min, 0].max
  end

  def set_race
    @race = Race.find(params[:id])
  end

  def increment_score!
    update_score(100)
  end

  def decrement_score!
    update_score(-100)
  end

  def update_score(amount)
    current_user.score += amount
    current_user.save
  end

  def set_new_race
    @race = Race.new(race_params)
    @race.user = current_user
  end

  def set_historical_figure
    @race.historical_figure = HistoricalFigure.find(params[:historical_figure_id]) if params[:historical_figure_id]
  end

  def set_race_for_result
    @race = current_user.races.last
    if @race.nil?
      redirect_to win_path
    end
  end

  def geolocation_hash(race)
    {
      lat: race.latitude,
      lng: race.longitude,
      marker_html: render_to_string(partial: "marker", locals: { race: race })
    }
  end

  def race_params
    params.require(:race).permit(:historical_figure_id, :car_type, :location)
  end
end
