Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  resources :blog_posts do
    resource :cover_image, only: [:destroy], module: :blog_posts
  end
  # get "blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  # get "blog_posts/:id", to: "blog_posts#show", as: :blog_post
  # patch "blog_posts/:id", to: "blog_posts#update"
  # delete "blog_posts/:id", to: "blog_posts#destroy"
  # get "blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  # post "blog_posts", to: "blog_posts#create", as: :blog_posts

  # Defines the root path route ("/")
  root "blog_posts#index"
end
