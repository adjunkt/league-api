class ApplicationController < ActionController::API
  include JSONAPI::ActsAsResourceController
  include Pundit

  rescue_from AuthenticationError, with: :handle_exceptions

  before_action :doorkeeper_authorize!

  def context
    { current_user: current_user }
  end

  def current_user
    @current_user ||= User.find_by(
      id: doorkeeper_token.try(:resource_owner_id))
  end

  def doorkeeper_unauthorized_render_options(error: nil)
    raise AuthenticationError if error.nil?
    raise AuthenticationError.new(detail: error.description)
  end
end
