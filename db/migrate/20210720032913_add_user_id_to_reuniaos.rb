class AddUserIdToReuniaos < ActiveRecord::Migration[6.1]
  def change
    add_column :reuniaos, :user_id, :interger
    add_index :reuniaos, :user_id
  end
end
