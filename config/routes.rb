Rails.application.routes.draw do
  devise_for :users do
    member do
      set 'send_message'
    end
  end
  resources :products
  root 'products#index'
end
