class SermonsController < ApplicationController
  def new
    sermon_series = SermonSeries.find(params[:sermon_series_id])
    @sermon = sermon_series.sermons.build(
      title: "Your New Sermon",
      description: "Describe the sermon")

    session_token = Aws::STS::Client.new.get_session_token(duration_seconds: 3600)
    @aws_credentials = session_token.credentials
    @aws_bucket = "wisdomonline-#{ENV['RAILS_ENV']}"
  end

  def create
    sermon_series = SermonSeries.find(params[:sermon_series_id])
    @sermon = sermon_series.sermons.create(sermon_params)
    redirect_to sermon_series_path(sermon_series.id)
  end

  def destroy
    Sermon.find(params[:id]).destroy
    redirect_back(fallback_location: sermon_series_index_path)
  end

  private

  def sermon_params
    params.require(:sermon).permit(:title, :description)
  end
end
