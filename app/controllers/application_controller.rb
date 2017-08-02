class ApplicationController < ActionController::API
  include JSONAPI::ActsAsResourceController

  def context
    { current_user: current_user }
  end
end
