class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :father_last_name
      t.string :mother_last_name
      t.string :enrollment
      t.string :curp
      t.string :email
      t.string :address
      t.integer :cp
      t.integer :phone, limit: 8
      t.integer :cell_phone, limit: 8
      t.string :link_facebook
      t.string :link_instagram
      t.string :link_twitter
      t.timestamps null: false
    end
  end
end
