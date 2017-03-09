Rails.application.routes.draw do
  get 'shopify_access_keys/auth'

  resources :sermon_series do
    resources :sermons, shallow: true
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
