TucsonElite::Application.routes.draw do
  devise_for :users

  resources :events
  resources :posts
  resources :post_comments
  resources :videos

  get "/welcome/index"
  get "/coaches" => "coaches#index", :as => :coaches
  get "/workouts" => "workouts#index", :as => :workouts

  get "/events_admin" => "events#listing", :as => :events_listing
  get "/posts_admin" => "posts#listing", :as => :posts_listing
  get "/videos_admin" => "videos#listing", :as => :videos_listing
  
  get "/blog" => "posts#index", :as => :blog
  
  root :to => "welcome#index"  
end
