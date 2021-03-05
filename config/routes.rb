Rails.application.routes.draw do
  root "home#index"

  resources :animals do
    resources :sightings
  end

  resources :regions

  resources :sightings do
    get 'search', on: :collection
  end 
end
