FactoryBot.define do
  factory :member do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    dob { Faker::Date.birthday(18, 40) }
    association :plan, factory: :plan
  end
end