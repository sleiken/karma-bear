FactoryGirl.define do
  factory :need do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    quantity_needed { Faker::Number.number(3) }

    association :charity

    trait :in_the_future do
      published_at { 2.days.from_now }
    end

    trait :in_the_past do
      published_at { 2.days.ago }
    end

    trait :with_donations do
      transient do
        donations_count 3
      end

      after(:create) do |need, evaluator|
        create_list(:donation, evaluator.donations_count, need: need)
      end
    end
  end
end
