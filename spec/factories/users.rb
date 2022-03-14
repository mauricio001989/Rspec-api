FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    likes { 'kk' }
  end
end
