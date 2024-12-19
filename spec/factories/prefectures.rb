FactoryBot.define do
  factory :prefecture do
    name { "Tokyo" }

    trait :hokkaido do
      name { "Hokkaido" }
    end

    trait :osaka do
      name { "Osaka" }
    end
  end
end
