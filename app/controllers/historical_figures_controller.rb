class HistoricalFiguresController < ApplicationController
  def index
    @historical_figures = HistoricalFigure.all
    if params[:query].present?
      @historical_figures = @historical_figures.search_by_name__category_and_era(params[:query])
    end
  end

  def show
    @historical_figure = HistoricalFigure.find(params[:id])
    @race = Race.new
  end

  private

  def historical_figure_params
    params.require(:historical_figure).permit(:name, :era, :image_url, :category)
  end
end
