class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.references :post, foreign_key: true
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
