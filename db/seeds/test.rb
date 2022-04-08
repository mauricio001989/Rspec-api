if Rails.env.test?
  puts '===== Test Seed ======'

  puts 'Create Country'
  Country.create([
    { code: 'CO', name: 'Colombia' },
    { code: 'CL', name: 'Chile' },
    { code: 'CN', name: 'China' }
  ])
end
