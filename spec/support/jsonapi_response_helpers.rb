module JSONAPIResponseHelpers
  def json
    JSON.parse(response.body)
  end

  def data
    json['data']
  end

  def type
    data['type']
  end

  def id
    data['id']
  end

  def errors
    deep_dasherize_keys(json['errors'].first)
  end

  def attributes
    deep_dasherize_keys(data['attributes'])
  end

  def deep_dasherize_keys(hash)
    hash.deep_transform_keys { |key| key.underscore.to_sym }
  end
end
