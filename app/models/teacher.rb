class Teacher < ApplicationRecord
	has_and_belongs_to_many :languages
	has_many :country_types
	has_many :app_countries, through: :country_types
	belongs_to :organization, optional: true
	has_many :sessions	
	has_many :students, through: :sessions 
	has_many :experiences
	has_many :subjects, through: :experiences
	has_many :reviews, through: :sessions
end
