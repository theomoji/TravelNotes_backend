Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :notes, only: [:index, :update, :create, :show, :destroy]
      # get "/notes/:id", to: "notes#find_note" 
    end
  end
end
