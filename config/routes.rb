Rails.application.routes.draw do


  root 'users#login'

  get 'users/login'
  post 'users/attempt_login'
  get 'users/logout'
  get 'forms/thank_you'

  resources :users do
    member do
      get :delete
    end
  end
  resources :forms do
    member do
      get :delete
    end
  end
  resources :questions do
    member do
      get :delete
    end
  end
  resources :answer_fields do
    member do
      get :delete
    end
  end
  resources :answer_groups do
    member do
      get :delete
    end
  end
  resources :answers do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
