FactoryBot.define do
  factory :favorite do
    user_id       { Faker::Number.non_zero_digit }
    food_id       { Faker::Number.non_zero_digit }
  end
end
