class SermonSeriesController < ApplicationController
  def index
    @sermon_series = SermonSeries.all
  end

  def new
    @sermon_series = SermonSeries.new(title: "Your New Series", released_on: Date.today, description: "Describe the series")
  end

  def create
    @sermon_series = SermonSeries.create(
      params.require(:sermon_series).permit(:title, :relased_on, :description)
    )
    redirect_to action: "index"
  end

  def destroy
    SermonSeries.find(params[:id]).destroy
    redirect_to action: "index"
  end
end
