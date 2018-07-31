Rails.application.routes.draw do
  get '/', to: 'static#home'
  get '/users', to: 'static#users'
  post '/users', to: 'static#create_users'
  get '/user/:id', to: 'user#show'
  get '/errors', to: 'static#errors'
end
