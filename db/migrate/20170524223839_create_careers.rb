class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :name
      t.integer :student_id           # relation
      t.timestamps null: false
    end
  end
end
