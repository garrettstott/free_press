class CreateUserSettings < ActiveRecord::Migration[8.1]
  def change
    create_table :user_settings do |t|
      t.belongs_to  :user, null: false, foreign_key: true
      t.boolean     :contributor, null: false, default: false
      t.boolean     :comment, null: false, default: true
      t.boolean     :locked, null: false, default: false
      t.json        :notes
      t.timestamps
    end
  end
end
