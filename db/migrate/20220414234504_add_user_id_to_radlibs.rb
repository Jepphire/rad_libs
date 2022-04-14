class AddUserIdToRadlibs < ActiveRecord::Migration[7.0]
  def change
    add_column :radlibs, :user_id, :int
  end
end
