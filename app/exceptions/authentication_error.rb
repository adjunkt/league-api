class AuthenticationError < JSONAPI::Exceptions::Error
  def errors
    [
      create_error_object(
        title: 'Authentication failed',
        detail: 'Authentication failed',
        status: :unauthorized,
        code: '401'
      )
    ]
  end
end
