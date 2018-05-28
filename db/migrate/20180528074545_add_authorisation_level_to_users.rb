class AddAuthorisationLevelToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :authorisation, :integer
  end
end
