if Rails.env.development?
  puts '===== Development Seed ======'

  puts 'Create users'
  Rake::Task['users:create'].invoke
end
