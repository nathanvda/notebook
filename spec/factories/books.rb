# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :book_name do |n|
    "MyBook#{n}"
  end

  factory :book do
    title Factory.next :book_name
    description "Some pretty useless description"
    user
  end
end