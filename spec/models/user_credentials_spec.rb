require 'rails_helper'

RSpec.describe UserCredential, type: :model do
  before(:all) do
    @user = create(:user, :with_user_credentials )
    @user_credential = @user.user_credentials.first
  end
  describe "User model column tests" do

    it "has a verified column" do
      expect(@user.id).to eq(@user_credential.user_id)
      binding.pry
      expect(@user_credential.verified).to_not be(nil)
    end
  end
end
