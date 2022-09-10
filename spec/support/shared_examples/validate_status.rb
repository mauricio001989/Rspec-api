# == 1xx Informational response ===================================================================

# == 2xx Success response =========================================================================

shared_examples 'when validate status 200 ok' do
  it 'responds with ok status' do
    expect(response).to have_http_status(:ok)
  end
end

shared_examples 'when validate status 200 ok' do
  it "returns http success" do
    expect(response).to have_http_status(:success)
  end
end

shared_examples 'when validate status 201 create' do
  it 'responds with created status' do
    expect(response).to have_http_status(:created)
  end
end

shared_examples 'when validate status 204 no content' do
  it 'responds with no content status' do
    expect(response).to have_http_status(:no_content)
  end
end

# == 3xx Redirection response =====================================================================

# == 4xx Client errors response ===================================================================

shared_examples 'when validate status 400 bad request' do
  it 'responds with unauthorized status' do
    expect(response).to have_http_status(:bad_request)
  end
end

# shared_examples 'when validate status 401 unauthorized' do
#   it 'responds with unauthorized status' do
#     expect(response).to have_http_status(:unauthorized)
#   end
# end

shared_examples 'when validate status 404 record not found' do
  it 'responds with not found status' do
    expect(response).to have_http_status(:not_found)
  end
end

shared_examples 'when validate status 422 unprocessable_entity' do
  it 'responds with unprocessable entity status' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
