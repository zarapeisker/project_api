class AppCountry < ApplicationRecord
	has_and_belongs_to_many :languages
	has_many :organizations
	has_many :country_types
	has_many :teachers, through: :country_types
	has_many :students, through: :country_types
end
