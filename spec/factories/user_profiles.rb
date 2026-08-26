# == Schema Information
#
# Table name: user_profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  bio        :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_user_profiles_on_user_id  (user_id)
#

FactoryBot.define do
  factory :user_profile do
    user { nil }
    bio { Faker::Lorem.paragraph(sentence_count: 40) }
    avatar { nil }

    before(:create) do |user_profile|
      user_profile.user_id = create(:user).id if user_profile.user_id.nil?
    end
  end
end
