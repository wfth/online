class AddUuidToSermonSeries < ActiveRecord::Migration[5.0]
  def change
    add_column :sermon_series, :uuid, :string
  end
end
