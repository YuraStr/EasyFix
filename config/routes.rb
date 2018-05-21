Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :fixes do
      resources :promotion_forms
      post 'build_promote'
    end
  end

  post '/users/:user_id/fixes/:fix_id/promotion_forms/:id/members/create', to: 'members#create', as: 'create_member'

  root to: 'fixes#index'
end
