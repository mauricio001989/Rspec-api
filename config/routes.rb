Rails.application.routes.draw do
  # @see https://guides.rubyonrails.org/routing.html

  api_version(module: 'Api::V1', path: { value: 'api/v1'}, defaults: { format: :json }) do
    resources :users,      only: %i[index show create update destroy]
    resources :countries,  only: %i[index show]
  end
end
