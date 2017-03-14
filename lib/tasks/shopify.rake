desc "Generate Shopify install url"
task :shopify_install_url => :environment do
  shop = "wfth"
  scope = CGI.escape(ShopifyApp.configuration.scope)
  api_key = ShopifyApp.configuration.api_key
  redirect_uri = CGI.escape("http://localhost:3000/auth/shopify/callback")
  nonce = "somethingunique"
  option = "per-user"

  puts "https://#{shop}.myshopify.com/admin/oauth/authorize?client_id=#{api_key}&scope=#{scope}&redirect_uri=#{redirect_uri}&state=#{nonce}&grant_options[]=#{option}"
end
