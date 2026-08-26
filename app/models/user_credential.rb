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

class UserCredential < ApplicationRecord
  belongs_to :user
end
