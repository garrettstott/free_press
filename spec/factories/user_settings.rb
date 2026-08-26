FactoryBot.define do
  factory :user_settings do
    comment { true }
    contributor { false }
    locked { false }
    notes { nil }

    before(:create) do |user_settings|
      user_settings.user_id = create(:user).id if user_settings.user_id.nil?
    end
  end
end
