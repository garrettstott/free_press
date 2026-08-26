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

require 'rails_helper'

RSpec.describe UserProfileLink, type: :model do
  before(:all) do
    @user_profile_link = create(:user_profile_link)
  end
  describe "User model column tests" do

    it "has a url column" do
      expect(@user_profile_link.url).to_not be_empty
    end
    it "has a name column" do
      expect(@user_profile_link.name).to_not be_empty
    end
    it "has a icon column" do
      expect(@user_profile_link.icon).to_not be_empty
    end
  end
end
