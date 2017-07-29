Rails.application.routes.draw do
  devise_for :users,
    only: [:sessions],
    defaults: { format: :json }
end
