# == Schema Information
#
# Table name: user_settings
#
#  id          :integer          not null, primary key
#  comment     :boolean          default(TRUE), not null
#  contributor :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  locked      :boolean          default(FALSE), not null
#  notes       :json
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_user_settings_on_user_id  (user_id)
#

class UserSettings < ApplicationRecord
  belongs_to :user
end
