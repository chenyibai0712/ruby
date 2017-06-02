Rails.application.routes.draw do
  resources :loan_logs
  resources :read_logs
  resources :book_contents
  resources :book_types
  root :to => "books#index" 
  devise_for :users do
  match '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :books do
    collection do
      post  :loan_book
    end
  end
	resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
