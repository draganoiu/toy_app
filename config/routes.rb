Rails.application.routes.draw do
  resources :users


root  'pages#homepage'
get   'about',    to: 'pages#about'

resources :articoles


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
