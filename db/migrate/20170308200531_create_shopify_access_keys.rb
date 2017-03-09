class CreateShopifyAccessKeys < ActiveRecord::Migration[5.0]
  def change
    create_table :shopify_access_keys do |t|
      t.string :access_token
      t.string :scopes

      t.timestamps
    end
  end
end
