if Rails.env.qa?
  puts '===== Qa Seed ======'

  puts 'Create users'
  Rake::Task['users:create'].invoke
end
