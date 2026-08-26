# == Schema Information
#
# Table name: user_settings
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  contributor :boolean          default(FALSE), not null
#  comment     :boolean          default(TRUE), not null
#  locked      :boolean          default(FALSE), not null
#  notes       :json
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_user_settings_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe UserSettings, type: :model do
  before(:all) do
    @user_settings = create(:user_settings)
  end

  describe "default values" do
    it 'sets default values' do
      expect(@user_settings.locked).to be(false)
      expect(@user_settings.notes).to be(nil)
      expect(@user_settings.user).to be_a(User)
      expect(@user_settings.comment).to be(true)
      expect(@user_settings.contributor).to be(false)
    end
  end
end
