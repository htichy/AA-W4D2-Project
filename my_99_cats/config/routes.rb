Rails.application.routes.draw do
  get 'cats/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :cats
   
end
