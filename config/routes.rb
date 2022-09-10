Rails.application.routes.draw do
  # @see https://guides.rubyonrails.org/routing.html

  api_version(module: 'Api::V1', path: { value: 'api/v1'}, defaults: { format: :json }) do

  end
end
