# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tip do
    to "MyString"
    from "MyString"
    amount "9.99"
  end
end
