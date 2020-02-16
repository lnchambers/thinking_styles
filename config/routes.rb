Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :results, only: [:create]
      resources :test_layout, only: [:index]
    end
  end
end
