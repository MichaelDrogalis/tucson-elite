TucsonElite::Application.routes.draw do
  devise_for :users

  resources :events
  resources :posts
  resources :post_comments
  resources :videos

  get "/welcome/index"
  get "/about" => "about#index", :as => :about
  get "/coaches" => "coaches#index", :as => :coaches
  get "/workouts" => "workouts#index", :as => :workouts
  get "/blog" => "posts#index", :as => :blog

  get "/post_tags/:tag" => "post_tags#index", :as => :post_tags
  
  get "/events_admin" => "events#listing", :as => :events_listing
  get "/posts_admin" => "posts#listing", :as => :posts_listing
  get "/post_comments_admin" => "post_comments#listing", :as => :post_comments_listing
  get "/videos_admin" => "videos#listing", :as => :videos_listing
  
  root :to => "welcome#index"  
end
