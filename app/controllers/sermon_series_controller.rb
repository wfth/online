class SermonSeriesController < ApplicationController
  def index
    @sermon_series = SermonSeries.all
  end

  def new
    @sermon_series = SermonSeries.new(
      title: "Your New Series",
      released_on: Date.today,
      description: "Describe the series")
  end

  def create
    @sermon_series = SermonSeries.create(sermon_series_params)
    redirect_to action: "index"
  end

  def show
    @sermon_series = SermonSeries.find(params[:id])
  end

  def destroy
    SermonSeries.find(params[:id]).destroy
    redirect_to action: "index"
  end

  private

  def sermon_series_params
    params.require(:sermon_series).permit(:title, :released_on, :description)
  end
end
