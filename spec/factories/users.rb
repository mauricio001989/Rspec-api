FactoryBot.define do
  factory :user do
    name    { Faker::Name.name }
    likes   { 'kk' }
    country { Country.all.sample }
  end
end
