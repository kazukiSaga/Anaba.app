FactoryBot.define do
  factory :comment do
    association :user
    association :spot
    title { "Test Comment" }
    body { "This is a test comment body." }
    images { [] }
  end
end

