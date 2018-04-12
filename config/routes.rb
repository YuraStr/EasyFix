Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :fixes do
      resources :promotion_forms
    end
  end

  root to: "fixes#index"
end
