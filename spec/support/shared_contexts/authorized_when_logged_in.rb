shared_context 'with current user' do
  let(:current_user) { create(:user) }
end

shared_context 'when the current user is authenticated with language En' do
  include_context 'with current user'
  before do
    request.headers['Accept-Language'] = 'en'
    current_user
    http_request
  end
end

shared_context 'when the current user is not authenticated' do
  before { http_request }
end
