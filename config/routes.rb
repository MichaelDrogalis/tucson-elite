TucsonElite::Application.routes.draw do
  resources :posts

  devise_for :users
  resources :events

  get "/welcome/index"
  get "/coaches" => "coaches#index", :as => :coaches
  get "/workouts" => "workouts#index", :as => :workouts
  get "/events_admin" => "events#listing", :as => :events_listing

  root :to => "welcome#index"  
end
