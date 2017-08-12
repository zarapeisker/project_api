class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.references :teacher, foreign_key: true
      t.references :subject, foreign_key: true
      t.integer :ages, array:true, default: []
      t.integer :work_experience
      t.integer :teaching_experience

      t.timestamps
    end
  end
end
