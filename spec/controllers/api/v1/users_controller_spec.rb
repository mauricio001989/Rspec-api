require 'rails_helper'

describe Api::V1::UsersController, type: :controller do
  before { create_list(:user, 3) }

  # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  describe "GET #index" do
    subject(:http_request) { get :index } #subject generico

    context 'when I get all the users' do
      include_context 'when the current user is authenticated with language En'

      include_examples 'when validate status 200 ok'

      it { expect(response_body.count).to eq(User.count) }
    end
  end

  describe "GET #show" do
    subject(:http_request) { get :show, params: id }

    context 'when I see a user' do
      include_context 'when the current user is authenticated with language En'

      let(:id) { { id: User.last.id } }

      include_examples 'when validate status 200 ok'

      it { expect(response_body['name']).to eq(User.find(id[:id]).name) }
    end

    context 'when the user is not present' do
      include_context 'when the current user is authenticated with language En'

      let(:id) { { id: -1 } }

      include_examples 'when validate status 404 record not found'
    end
  end

  # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  describe "POST #create" do
    subject(:http_request) { post :create, params: params_create }

    context 'when create a user' do
      include_context 'when the current user is authenticated with language En'

      let(:params_create) { { user: build(:user).as_json } }

      include_examples 'when validate status 201 create'
    end

    context 'when not create a user' do
      include_context 'when the current user is authenticated with language En'

      let(:params_create) { { user: build(:user, name: nil).as_json } }

      include_examples 'when validate status 422 unprocessable_entity'
    end
  end

  # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  describe "PUT #update" do
    subject(:http_request) { patch :update, params: { id: id, user: params_update } }

    let(:id) { User.last.id }
    let(:params_update) { { name: 'update'} }

    context 'when update a user' do
      include_context 'when the current user is authenticated with language En'


      include_examples 'when validate status 200 ok'
    end

    context 'when not update a user' do
      include_context 'when the current user is authenticated with language En'

      let(:params_update) { { name: nil} }

      include_examples 'when validate status 422 unprocessable_entity'
    end

    context 'when the user is not present' do
      include_context 'when the current user is authenticated with language En'

      let(:id) { -1 }

      include_examples 'when validate status 404 record not found'
    end
  end

  # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  describe "DELETE #destroy" do
    subject(:http_request) { delete :destroy, params: id }

    context 'when I remove a user' do
      include_context 'when the current user is authenticated with language En'

      let(:id) { { id: User.last.id } }

      include_examples 'when validate status 204 no content'

      it { expect(User.find_by(id: id)).to be_nil }
    end

    context 'when the user is not present' do
      include_context 'when the current user is authenticated with language En'

      let(:id) { { id: -1 } }

      include_examples 'when validate status 404 record not found'
    end
  end
end
