Rails.application.routes.draw do
  resources :book_types
  root :to => "books#index" 
  devise_for :users do
  match '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :books do 
  	
  end
	resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
