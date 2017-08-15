Apipie.configure do |config|
  config.app_name = 'League'
  config.api_base_url = '/'
  config.doc_base_url = '/docs'
  config.default_version = 'api'
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
end
