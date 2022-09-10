# >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

shared_examples 'Routes to index' do
  it 'Routes to #Index' do
    expect(get: "api/v1/#{controller}").to route_to(
      controller: "api/v1/#{controller}", action: 'index', format: :json
  )
  end
end

shared_examples 'Routes to show' do
  it 'routes to #show' do
    expect(get: "/api/v1/#{controller}/1").to route_to(
      controller: "api/v1/#{controller}", action: 'show', id: '1', format: :json
    )
  end
end

# >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

shared_examples 'Routes to create' do
  it 'Routes to #CREATE' do
    expect(post: "api/v1/#{controller}").to route_to(
      controller: "api/v1/#{controller}", action: 'create', format: :json
    )
  end
end

# >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

shared_examples 'Routes to put' do
  it 'Routes to #UPDATE via PUT' do
    expect(put: "/api/v1/#{controller}/1").to route_to(
      controller: "api/v1/#{controller}",action: 'update', id: '1', format: :json
    )
  end
end

# >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

shared_examples 'Routes to delete' do
  it 'Routes to #DESTROY' do
    expect(delete: "/api/v1/#{controller}/1").to route_to(
      controller: "api/v1/#{controller}", action: 'destroy', id: '1', format: :json
    )
  end
end
