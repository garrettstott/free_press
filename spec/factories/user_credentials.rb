# == Schema Information
#
# Table name: user_credentials
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  verified   :boolean          default(FALSE), not null
#  notes      :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_user_credentials_on_user_id  (user_id)
#

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
