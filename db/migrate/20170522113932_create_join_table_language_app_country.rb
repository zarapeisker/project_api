class CreateJoinTableLanguageAppCountry < ActiveRecord::Migration[5.1]
  def change
    create_join_table :languages, :app_countries do |t|
      # t.index [:language_id, :app_country_id]
      # t.index [:app_country_id, :language_id]
    end
  end
end
