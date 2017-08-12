class CreateCountryTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :country_types do |t|
      t.references :teacher, foreign_key: true
      t.references :student, foreign_key: true
      t.references :app_country, foreign_key: true
      t.string :kind

      t.timestamps
    end
  end
end
