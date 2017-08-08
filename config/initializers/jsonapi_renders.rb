ActionController.add_renderer(:json_api) do |object, options|
  if object.kind_of? JSONAPI::Resource
    object = JSONAPI::ResourceSerializer
      .new(object.class)
      .serialize_to_hash(object)
  end
  render_options = options.merge(json: object, adapter: :json_api)

  response.headers['Content-Type'] = 'application/vnd.api+json'
  render(render_options)
end

ActionController.add_renderer(:json_api_error) do |object, _|
  response.headers['Content-Type'] = 'application/vnd.api+json'
  render_errors(object.errors)
end
