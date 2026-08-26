class CreateCredentials < ActiveRecord::Migration[8.1]
  def change
    create_table :user_credentials do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean    :verified, null: false, default: false
      t.json       :notes
      t.timestamps
    end
  end
end
