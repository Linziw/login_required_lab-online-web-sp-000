Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 get '/' => 'secrets#show'

 resources :sessions, only: [:new, :create]
 post '/logout' => 'sessions#destroy'

end
