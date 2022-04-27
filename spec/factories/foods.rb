FactoryBot.define do
  factory :food do
    name { Faker::Lorem.sentence }

    association :user
  end
end
