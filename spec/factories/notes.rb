# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :note do
    title   "Who needs a title anyway"
    content "Boring content ..."
    book
  end
end