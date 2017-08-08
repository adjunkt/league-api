module JSONAPIHeadersHelpers
  JSONAPI_MEDIA_TYPE = 'application/vnd.api+json'.freeze

  def jsonapi_media_type_headers
    {
      'ACCEPT' => JSONAPI_MEDIA_TYPE,
      'CONTENT_TYPE' => JSONAPI_MEDIA_TYPE
    }
  end

  def headers_for_user(user)
    access_token = create(:access_token, resource_owner_id: user.id)
    jsonapi_media_type_headers.merge(
      'Authorization' => "Bearer #{access_token.token}"
    )
  end
end
