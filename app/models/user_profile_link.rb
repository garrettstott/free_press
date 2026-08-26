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

class UserProfileLink < ApplicationRecord
  belongs_to :user_profile
end
