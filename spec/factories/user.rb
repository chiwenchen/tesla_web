require 'faker'
FactoryGirl.define do
  factory :user do
    username {Faker::Name.unique.name}
    email {Faker::Internet.unique.email}
    password '12341234'
  end
end
