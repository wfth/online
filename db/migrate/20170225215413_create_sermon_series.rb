class CreateSermonSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :sermon_series do |t|
      t.string :title
      t.string :description
      t.date :released_on
      t.string :graphic_url

      t.timestamps
    end
  end
end
