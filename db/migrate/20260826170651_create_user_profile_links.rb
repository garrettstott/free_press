class CreateUserProfileLinks < ActiveRecord::Migration[8.1]
  def change
    create_table :user_profile_links do |t|
      t.belongs_to :user_profile, null: false, foreign_key: true
      t.string :url
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
