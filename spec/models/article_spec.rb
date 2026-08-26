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

require 'rails_helper'

RSpec.describe Article, type: :model do
  before(:all) do
    @article = create(:article)
  end
  describe "User model column tests" do
    it "has a title column" do
      expect(@article.title).to_not be(nil)
    end
    it "has a edited column" do
      expect(@article.edited).to be(false)
    end
  end
end
