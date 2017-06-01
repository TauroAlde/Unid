class CreateStudentCareers < ActiveRecord::Migration
  def change
    create_table :student_careers do |t|
      t.belongs_to :student
      t.belongs_to :career
      t.timestamps null: false
    end
  end
end
