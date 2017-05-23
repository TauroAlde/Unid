class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :full_name
      t.string :email
      t.integer :phone, limit: 8
      t.integer :cell_phone, limit: 8
      t.string :job
      t.string :address
      t.integer :student_id           # relation
      t.timestamps null: false
    end
  end
end
