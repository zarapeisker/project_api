class CreateJoinTableLanguageTeacher < ActiveRecord::Migration[5.1]
  def change
    create_join_table :languages, :teachers do |t|
      # t.index [:language_id, :teacher_id]
      # t.index [:teacher_id, :language_id]
    end
  end
end
