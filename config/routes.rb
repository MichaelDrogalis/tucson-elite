TucsonElite::Application.routes.draw do
  devise_for :users

  resources :events
  resources :posts
  resources :post_comments
  resources :videos
  resources :tips

  get "/welcome/index"
  get "/about" => "about#index", :as => :about
  get "/founders" => "founders#index", :as => :founders
  get "/blog" => "posts#index", :as => :blog
  get "/tips" => "tips#index", :as => :tips

  get "/post_tags/:tag" => "post_tags#index", :as => :post_tags
  get "/video_tags/:tag" => "video_tags#index", :as => :video_tags
  
  get "/events_admin" => "events#listing", :as => :events_listing
  get "/posts_admin" => "posts#listing", :as => :posts_listing
  get "/post_comments_admin" => "post_comments#listing", :as => :post_comments_listing
  get "/videos_admin" => "videos#listing", :as => :videos_listing
  get "/tips_admin" => "tips#listing", :as => :tips_listing
  
  root :to => "welcome#index"  
end
