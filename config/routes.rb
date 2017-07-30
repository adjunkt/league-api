Rails.application.routes.draw do
  use_doorkeeper do
    controllers tokens: 'tokens'
  end
  # devise_for :users
end
