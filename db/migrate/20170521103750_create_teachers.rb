class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.references :organization, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :skype_id
      t.string :linkedin
      t.text :description
      t.string :time_zone

      t.timestamps
    end
  end
end
