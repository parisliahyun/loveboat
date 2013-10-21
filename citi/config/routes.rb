Citi::Application.routes.draw do
  resources :users, only: [:new, :create, :show, :delete]

  resources :users do
  resources :trips
  end

  root 'welcome#index'
  resource :session, only: [:destroy, :create, :new]
end
