class SermonsController < ApplicationController
  def new
    resp = Aws::STS::Client.new.get_session_token(duration_seconds: 3600)
    @aws_credentials = resp.credentials
    @aws_bucket = "wisdomonline-#{ENV['RAILS_ENV']}"
  end
end
