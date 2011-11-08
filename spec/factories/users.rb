# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :user_email do |n|
    "login#{n}@bla.com"
  end

  factory :user do
    email { FactoryGirl.generate(:user_email) }
    password "somepw123"
    password_confirmation "somepw123"
  end
end