class Student < ApplicationRecord
	has_and_belongs_to_many :languages
	has_many :country_types
	has_many :app_countries, through: :country_types
	has_many :sessions
	has_many :teachers, through: :sessions
	belongs_to :organization
	has_and_belongs_to_many :subjects
	has_many :reviews, through: :sessions
end
