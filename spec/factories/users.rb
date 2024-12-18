FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }
    password { "password" }
    name { "Test User" }
    provider { "email" }
    uid { SecureRandom.uuid }
  end
end

