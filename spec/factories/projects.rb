FactoryBot.define do
  factory :project do
    name { Faker::Internet.name }
    description { Faker::Internet.describe }
  end
end
