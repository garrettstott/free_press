# == Schema Information
#
# Table name: user_settings
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  contributor :boolean          default(FALSE), not null
#  comment     :boolean          default(TRUE), not null
#  locked      :boolean          default(FALSE), not null
#  notes       :json
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_user_settings_on_user_id  (user_id)
#

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
