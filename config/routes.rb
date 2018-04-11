Rails.application.routes.draw do
  devise_for :users

  resources :fixes do
    resources :promotion_forms
  end

  root to: "fixes#index"
end
