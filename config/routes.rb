Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :portfolios do
    resources :projects
  end
end
