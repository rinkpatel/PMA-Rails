Rails.application.routes.draw do
  resources :tasks
  resources :projects do
    collection do
      get :manage
    end
  end
  root :to => "projects#index"
  devise_for :users
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
