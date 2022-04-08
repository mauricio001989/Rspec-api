namespace :users do
  task create: :environment do
    if User.first.nil?
      User.create([
        { name: 'mauricio', likes: 1, country_id: 'CO'},
        { name: 'Juan', likes: 2, country_id: 'CL' }
      ])
    end
  end
end
