class ChangeGraphicUrlToGraphicKey < ActiveRecord::Migration[5.0]
  def change
    rename_column :sermon_series, :graphic_url, :graphic_key
  end
end
