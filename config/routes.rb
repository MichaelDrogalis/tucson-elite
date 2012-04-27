TucsonElite::Application.routes.draw do
  resources :videos

  devise_for :users

  resources :events
  resources :posts

  get "/welcome/index"
  get "/coaches" => "coaches#index", :as => :coaches
  get "/workouts" => "workouts#index", :as => :workouts

  get "/events_admin" => "events#listing", :as => :events_listing
  get "/posts_admin" => "posts#listing", :as => :posts_listing
  
  get "/blog" => "posts#index", :as => :blog
  
  root :to => "welcome#index"  
end
