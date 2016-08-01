class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :assignment_title
      t.date :date_assigned
      t.date :date_turned_in
      t.integer :score
      t.integer :total
      t.string :filename
      t.string :content_type
      t.binary :file_contents

      t.timestamps null: false
    end
  end
end
