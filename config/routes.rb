Rails.application.routes.draw do
  resources :sermon_series, only: [:index, :new, :create, :destroy] do
    # resources :sermons, shallow: true
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
