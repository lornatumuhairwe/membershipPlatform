FactoryBot.define do
  factory :plan do
    name { Faker::Name.name }
    category { :recurrent }

    trait :time_limited do
      category { :time_limited }
      start_date { Faker::Date.birthday(1, 20) }
      end_date { Faker::Date.birthday(1, 20) }
    end
  end
end
