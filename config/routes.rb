Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users,
    only: [:sessions],
    path_names: {
      sign_in: 'login', 
      sign_out: 'logout'
    },
    defaults: { format: :json }
end
