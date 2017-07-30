class Devise::SessionsController < DeviseBaseController
  def create
    return invalid_authentication unless authenticatable_user
    return invalid_authentication unless validatable_user

    sign_in('user', authenticatable_user)
    render json: {
      auth_token: authenticatable_user.authentication_token
    }, status: 200
  end

  def detroy; end

  private

  def validatable_user
    @validatable_user ||= authenticatable_user.valid_password?(password)
  end

  def authenticatable_user

    @authenticatable_user ||=
      User.find_for_database_authentication(email: identification)
  end

  def identification
    params[:identification]
  end

  def password
    params[:password]
  end

  def invalid_authentication
    render json: {
      error: 'invalid_authentication',
      error_description: 'The email or password entered is incorrect',
      reset_password_token: reset_password_token,
      email: user.email
    }, status: 401
  end
end
