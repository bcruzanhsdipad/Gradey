class AddUsersToStudents < ActiveRecord::Migration
  def change
    add_column :students, :user_id, :int
    add_index :students, :user_id
  end
end
