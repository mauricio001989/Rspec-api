require "rails_helper"

RSpec.describe Api::V1::CountriesController, type: :routing do
  describe "routing" do
    # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    it "routes to #index" do
      expect(get: "/api/v1/countries").to route_to(
        controller: 'api/v1/countries', action: 'index', format: :json
      )
    end

    it "routes to #show" do
      expect(get: "/api/v1/countries/1").to route_to(
        controller: 'api/v1/countries', action: 'show', id: '1', format: :json
      )
    end

    # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  end
end
