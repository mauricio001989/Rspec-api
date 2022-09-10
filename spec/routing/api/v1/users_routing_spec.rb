require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :routing do
  describe 'routing' do
    # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    it 'Routes to #index' do
      expect(get: 'api/v1/users').to route_to(
        controller: 'api/v1/users', action: 'index', format: :json
      )
    end

    it 'routes to #show' do
      expect(get: '/api/v1/users/1').to route_to(
        controller: 'api/v1/users', action: 'show', id: '1', format: :json
      )
    end

    # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    it 'Routes to #create' do
      expect(post: '/api/v1/users').to route_to(
        controller: 'api/v1/users', action: 'create', format: :json
      )
    end

    # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    it 'Routes to #update via PUT' do
      expect(put: '/api/v1/users/1').to route_to(
        controller: 'api/v1/users',action: 'update', id: '1', format: :json
      )
    end

    # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    it 'Routes to #destroy' do
      expect(delete: '/api/v1/users/1').to route_to(
        controller: 'api/v1/users', action: 'destroy', id: '1', format: :json
      )
    end
  end
end
