# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bag do
    customer_name Faker::Name.name
  end
end
