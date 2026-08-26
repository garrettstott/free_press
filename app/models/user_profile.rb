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

class UserProfile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  has_many :user_profile_links
end
