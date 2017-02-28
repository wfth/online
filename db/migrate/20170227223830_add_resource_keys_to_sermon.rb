class AddResourceKeysToSermon < ActiveRecord::Migration[5.0]
  def change
    add_column :sermons, :audio_key, :string
    add_column :sermons, :transcript_key, :string
  end
end
