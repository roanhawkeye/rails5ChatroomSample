Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'rooms#index'
  resources :rooms, only:[:index, :show]
  resources :messages, only:[:create]
end
