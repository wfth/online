class ShopifyAccessKeysController < ApplicationController
  def auth
    shopify_request_params = {"client_id" => "4fb8b45524a12bfe79e8534b14004c87",
                              "client_secret" => "da2f39af7b562fd7a635603688b0df64",
                              "code" => params[:code]}
    request = Net::HTTP.post_form(URI.parse("https://wfth.myshopify.com/admin/oauth/access_token"), shopify_request_params)
    request_hash = eval(request.body)

    shopify_access_key = ShopifyAccessKey.new(access_token: request_hash[:access_token], scopes: request_hash[:scope])
    shopify_access_key.save!
  end
end
