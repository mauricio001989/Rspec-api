FactoryBot.define do
  factory :country do
    code { Faker::Address.unique.country      }
    name { Faker::Address.unique.country_code }
  end
end
