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

FactoryBot.define do
  factory :article do
    user { nil }
    title { Faker::Lorem.sentence(word_count: 6) }
    edited { false }

    before(:create) do |article|
      article.user_id = create(:user).id if article.user_id.nil?
    end
  end
end
