Rails.application.routes.draw do
  # get 'admin_panel/index'
  # get 'admin_panel/user_management'
  # get 'home/index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  post 'admin_panel/block_user/:id', to: 'admin_panel#block_user', as: :block_user
  post 'admin_panel/unblock_user/:id', to: 'admin_panel#unblock_user', as: :unblock_user
  post 'admin_panel/delete_user/:id', to: 'admin_panel#delete_user', as: :delete_user
  root 'home#index'
  get 'admin_panel/index'
  get 'admin_panel/user_management'
  # post 'delete/user', to: 'admin_panel#delete_user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
end
