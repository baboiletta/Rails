Rails.application.routes.draw do
  get 'tes/index'
  get 'orders/new', to: 'orders#new'
  post '/new_order_email', to: 'orders#create'



  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'home/index'
  
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
