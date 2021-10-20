Rails.application.routes.draw do
  root 'offers#index'

  get 'contact' => 'pages#contact'

  resources :offers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
