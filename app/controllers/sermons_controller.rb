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

  end
end
