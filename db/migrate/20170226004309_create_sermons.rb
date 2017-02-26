class CreateSermons < ActiveRecord::Migration[5.0]
  def change
    create_table :sermons do |t|
      t.string :title
      t.string :description
      t.belongs_to :sermon_series
      
      t.timestamps
    end
  end
end
