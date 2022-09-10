require 'rails_helper'

describe Api::V1::CountriesController, type: :controller do
  # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  describe "GET #index" do
    subject(:http_request) { get :index } #subject generico

    context 'when I get all the co' do
      before { http_request } # recomendable

      it 'responds with ok status' do
        expect(response).to have_http_status(:ok)
      end

      it { expect(response_body.count).to eq(3) }
    end
  end

  describe "GET #show" do
    subject(:http_request) { get :show, params: id }

    context 'when I see a country' do
      before { http_request } # recomendable

      let(:id) { { id: Country.last.id } }

      it { expect(response).to have_http_status(:ok) }
      it { expect(response_body['code']).to eq(Country.find(id[:id]).code) }
    end

    context 'when the country is not present' do
      before { http_request } # recomendable

      let(:id) { { id: -1 } }

      it { expect(response).to have_http_status(:not_found) }
    end
  end

  # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
end
