require 'securerandom'

class Sermon < ApplicationRecord
  belongs_to :sermon_series

  after_initialize do |sermon|
    sermon.uuid ||= SecureRandom.uuid
  end
end
