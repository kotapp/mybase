Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "toppage#index"
  # ユーザ登録用のパス
  get "signup", to: "users#new"
  resources :users, only: [:show, :create]
  # ログイン用のパス
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
    # ログアウト用
  delete "logout", to: "sessions#destroy"
end
