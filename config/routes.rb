Rails.application.routes.draw do
  resources :line_items do
    member do
      match :edit_quantity, via: %i[patch put] 
    end
  end
  resources :carts
  root 'store#index', as: 'store_index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
