FactoryBot.define do
  factory :user_credential do
    verified { true }
    notes { { DateTime.now => Faker::Lorem.sentence } }
    user_id { nil }

    before(:create) do |user_credential|
      user_credential.user_id = create(:user).id if user_credential.user_id.nil?
    end
  end
end
