class SermonSeriesController < ApplicationController
  def new
  end

  # Receives sermon audio files
  def upload
    params[:sermon_audios].each do |audio|
      logger.info(audio.original_filename)
    end
  end
end
