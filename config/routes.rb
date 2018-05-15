Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :fixes do
      resources :promotion_forms
      post 'build_promote'
    end
  end

  root to: 'fixes#index'
end
