FactoryBot.define do
    factory :user do
      sequence(:email) { |n| "test#{n + 1}@email.com" }
      password { 'testPassword' }
      password_confirmation { 'testPassword' }
    end
  end 