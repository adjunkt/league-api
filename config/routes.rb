Rails.application.routes.draw do
  apipie
  use_doorkeeper do
    controllers tokens: 'tokens'
  end

  get '/users/me', to: 'users#me', constraints: { id: 'me' }
  jsonapi_resources :users
end
