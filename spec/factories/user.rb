FactoryGirl.define do
  factory :user do
    first_name 'Gordie'
    last_name 'Howe'
    password 'P@ssw0rd'
    sequence(:email) do |n|
      "#{first_name}-#{last_name}-#{n}@example.com".downcase
    end
    confirmed_at { Time.now }
  end
end
