# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  title      :string(255)
#  edited     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#

class Article < ApplicationRecord
  belongs_to :user
end
