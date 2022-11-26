FactoryBot.define do
    factory :user do
      #sequence(:email) { |n| "test#{n + 2}@email.com" }
      email { 'test@email.com' }
      password { 'testPassword' }
      password_confirmation { 'testPassword' }
    end
  end 