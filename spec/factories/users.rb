FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    display_name { Faker::FunnyName.name }

    trait :with_user_credentials do
      after(:create) do |user|
        user.user_credentials << create(:user_credential, user_id: user.id)
      end
    end
  end
end
