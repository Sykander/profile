class AddForumReferenceToDiscussion < ActiveRecord::Migration[5.2]
  def change
    add_reference :discussions, :forum, foreign_key: true
  end
end
