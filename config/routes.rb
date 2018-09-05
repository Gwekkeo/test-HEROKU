Rails.application.routes.draw do

	root to: "home#index"
	
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

	get 'equipe/index'
	devise_for :users
	post 'equipe', to: 'equipe#create'
	
	resources :charges, only: [:don, :create, :thanks]
	get '/don', to: 'charges#donation'
	post '/don', to: 'charges#create'
	get '/donateurs', to: 'charges#donateurs'
end
