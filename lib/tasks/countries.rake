namespace :countries do
  task create: :environment do
    if Country.first.nil?
      file = File.open(Rails.root.join('db', 'docs', 'countries_list.yaml'))
      records = file.readlines
      records.each do |record|
        country = record.split("|").map(&:strip)
        Country.create(code: country[0], name: country[1])
      end
    end
  end
end
