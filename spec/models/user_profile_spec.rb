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

require 'rails_helper'

RSpec.describe UserProfile, type: :model do
  before(:all) do
    @user_profile = create(:user_profile)
  end
  describe "User model column tests" do
    it "has a bio column" do
      expect(@user_profile.bio).to_not be(nil)
    end
  end
end
