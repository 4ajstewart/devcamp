Devcamp::Application.routes.draw do
  resources :talks

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end