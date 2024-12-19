FactoryBot.define do
  factory :spot do
    association :user
    association :prefecture
    name { "Test Spot" }
    body { "This is a test spot description." }
    city { "Test City" }
    latitude { 35.6895 }
    longitude { 139.6917 }
  end
end
