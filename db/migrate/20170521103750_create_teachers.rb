class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.references :organization, foreign_key: true
      t.string :given_name
      t.string :family_name
      t.string :name
      t.string :email
      t.string :picture
      t.string :skype_id
      t.string :linkedin
      t.text :description
      t.string :time_zone

      t.timestamps
    end
  end
end
