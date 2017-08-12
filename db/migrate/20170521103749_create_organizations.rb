class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.references :language, foreign_key: true
      t.references :app_country, foreign_key: true
      t.string :name
      t.string :time_zone

      t.timestamps
    end
  end
end
