FactoryBot.define do
  factory :assessment do
    association :user
    association :spot
    rating { 4 }
    quiet_rating { 5 }
  end
end
