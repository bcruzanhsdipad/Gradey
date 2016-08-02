class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.integer :score
      t.integer :total
      t.date :date_due
      t.date :date_received
      t.binary :file
      t.text :details
      t.integer :student_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :assignments, :student_id
  end
end
