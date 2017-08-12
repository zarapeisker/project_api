class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.references :teacher, foreign_key: true
      t.references :student, foreign_key: true
      t.references :language, foreign_key: true
      t.references :subject, foreign_key: true
      t.references :review, foreign_key: true
      t.datetime :appointment
      t.string :status

      t.timestamps
    end
  end
end