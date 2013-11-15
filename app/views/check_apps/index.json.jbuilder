json.array!(@check_apps) do |check_app|
  json.extract! check_app, :first_name, :last_name
  json.url check_app_url(check_app, format: :json)
end
