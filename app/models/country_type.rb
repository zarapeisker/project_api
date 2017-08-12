class CountryType < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  belongs_to :app_country
end
