require 'securerandom'

class SermonSeries < ApplicationRecord
  has_many :sermons

  after_initialize do |sermon|
    sermon.uuid ||= SecureRandom.uuid
  end
end
