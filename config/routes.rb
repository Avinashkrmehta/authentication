Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: :create do
	  collection do
	    post 'confirm'
	    post 'login'
	    post 'email_update'
	  end
  end
  post 'password/forgot', to: 'password#forgot'
  post 'password/reset', to: 'password#reset'
  put  'password/update', to: 'password#update'
end
