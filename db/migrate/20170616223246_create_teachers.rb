class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :enrollment
      t.string :first_name
      t.string :father_last_name
      t.string :mother_last_name
      t.string :email
      t.integer :phone, limit: 8
      t.integer :cell_phone, limit: 8
      t.string :degree
      t.integer :degree_number
      t.string :master_degree
      t.integer :master_degree_number
      t.string :doctorate
      t.integer :doctorate_number
      t.string :work_place
      t.timestamps null: false
    end
  end
end
