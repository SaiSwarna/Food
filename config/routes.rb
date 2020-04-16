Rails.application.routes.draw do
  get 'del/index'
	resources :items do
	resources :orders
	end
  get 'items/index'
  resources :items do
	resources :orders
	end
  root 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
