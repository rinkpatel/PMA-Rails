FactoryBot.define do
  factory :user do
    first_name { Faker::Internet.name }
    last_name { Faker::Internet.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end
end
