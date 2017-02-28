class AddUuidToSermon < ActiveRecord::Migration[5.0]
  def change
    add_column :sermons, :uuid, :string
  end
end
