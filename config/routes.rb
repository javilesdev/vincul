Rails.application.routes.draw do

  resources :posts
  resources :profiles, as: :users, only: [:show, :update]

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


  post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"

  authenticated :user do
    root "home#index"
  end

  unauthenticated :user do
    root "home#landing"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
