Rails.application.routes.draw do
  get 'admin/show'

  get '/' =>'users#index'

  get '/show'=>'admin#show'

  post '/create' => 'users#create'

  post '/login' => 'users#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
