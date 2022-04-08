puts '===== common Seed ======'

puts 'Create country'
Rake::Task['countries:create'].invoke
