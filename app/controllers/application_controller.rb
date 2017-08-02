class ApplicationController < ActionController::API
  include JSONAPI::ActsAsResourceController

  before_action :doorkeeper_authorize!

  def context
    { current_user: current_user }
  end

  def current_user
    @current_user ||= User.find_by(
      id: doorkeeper_token.try(:resource_owner_id))
  end
end
