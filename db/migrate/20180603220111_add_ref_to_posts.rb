class AddRefToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :discussion, foreign_key: true
    add_reference :posts, :forum, foreign_key: true
  end
end
