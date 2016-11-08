FactoryGirl.define do
  factory :donation do
    quantity_given { Faker::Number.number(5) }

    association :need
    association :giver

    trait :in_the_future do
      published_at { 2.days.from_now }
    end

    trait :in_the_past do
      published_at { 2.days.ago }
    end
  end
end