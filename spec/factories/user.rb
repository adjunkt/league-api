FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Doe'
    password 'P@ssword123'
    sequence(:email) do |n|
      "#{first_name}-#{last_name}-#{n}@example.com".downcase
    end
    confirmed_at { Time.now }

    trait :admin do
      admin true
    end

    factory :admin_user, traits: [:admin]
    factory :unconfirmed_user do
      confirmed_at nil
    end
  end
end
