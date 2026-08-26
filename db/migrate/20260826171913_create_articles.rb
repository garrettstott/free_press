class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.boolean :edited

      t.timestamps
    end
  end
end
