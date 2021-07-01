Rails.application.routes.draw do
  root to: 'home#index'
  ActiveAdmin.routes(self)
  
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :employees, only: [:index, :show]
    end
  end
end
