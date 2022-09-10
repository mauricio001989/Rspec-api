require 'rails_helper'

describe Api::V1::UsersController, type: :controller do
  # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  describe "GET #index" do
    subject(:http_request) { get :index } #subject generico

    before { create_list(:user, 3) } # global

    context 'when I get all the users' do
      before { http_request } # recomendable

      it 'responds with ok status' do
        expect(response).to have_http_status(:ok)
      end

      it { expect(response_body.count).to eq(User.count) }
    end
  end

  describe "GET #show" do
    subject(:http_request) { get :show, params: id }

    before { create_list(:user, 3) } # global

    context 'when I see a user' do
      before { http_request } # recomendable

      let(:id) { { id: User.last.id } }

      it { expect(response).to have_http_status(:ok) }

      it { expect(response_body['name']).to eq(User.find(id[:id]).name) }
    end

    context 'when the user is not present' do
      before { http_request } # recomendable

      let(:id) { { id: -1 } }

      it { expect(response).to have_http_status(:not_found) }
    end
  end

  # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  describe "POST #create" do
    subject(:http_request) { post :create, params: params_create }

    context 'when create a user' do
      before { http_request } # recomendable

      let(:params_create) { { user: build(:user).as_json } }

      it { expect(response).to have_http_status(:created) }
    end

    context 'when not create a user' do
      before { http_request } # recomendable

      let(:params_create) { { user: build(:user, name: nil).as_json } }

      it { expect(response).to have_http_status(:unprocessable_entity) }
    end
  end

  # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  describe "PUT #update" do
    subject(:http_request) { patch :update, params: { id: id, user: params_update } }

    before { create_list(:user, 3) } # global
    let(:id) { User.last.id }

    context 'when update a user' do
      before { http_request } # recomendable

      let(:params_update) { { name: 'update'} }

      it { expect(response).to have_http_status(:ok) }
    end

    context 'when not update a user' do
      before { http_request } # recomendable

      let(:params_update) { { name: nil} }

      it { expect(response).to have_http_status(:unprocessable_entity) }
    end

    context 'when the user is not present' do
      before { http_request } # recomendable

      let(:params_update) { { name: 'update'} }
      let(:id) { -1 }

      it { expect(response).to have_http_status(:not_found) }
    end
  end

  # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  describe "DELETE #destroy" do
    subject(:http_request) { delete :destroy, params: id }

    before { create_list(:user, 3) } # global

    context 'when I remove a user' do
      before { http_request } # recomendable

      let(:id) { { id: User.last.id } }

      it { expect(response).to have_http_status(:no_content) }

      it { expect(User.find_by(id: id)).to be_nil }
    end

    context 'when the user is not present' do
      before { http_request } # recomendable

      let(:id) { { id: -1 } }

      it { expect(response).to have_http_status(:not_found) }
    end
  end
end
