# == Schema Information
#
# Table name: user_profile_links
#
#  id              :integer          not null, primary key
#  user_profile_id :integer          not null
#  url             :string(255)
#  name            :string(255)
#  icon            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_user_profile_links_on_user_profile_id  (user_profile_id)
#

FactoryBot.define do
  factory :user_profile_link do
    user_profile { nil }
    url { Faker::Internet.url }
    name { Faker::Lorem.word }
    icon { "fa-github" }

    before(:create) do |user_profile_link|
      user_profile_link.user_profile_id = create(:user).id if user_profile_link.user_profile_id.nil?
    end
  end
end
