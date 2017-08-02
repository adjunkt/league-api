class UsersController < ApplicationController
  def me
    render json_api: UserResource.new(current_user)
  end
end
