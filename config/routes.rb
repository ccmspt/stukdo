Rails.application.routes.draw do

  resources :tasks do
  	member do
  		put :change
  	end
  end

  resources :tasks
  devise_for :users
  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home' 

  get 'about' => 'pages#about'
  get 'test' => 'pages#test'

end
