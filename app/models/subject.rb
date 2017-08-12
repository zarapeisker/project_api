class Subject < ApplicationRecord
	has_many :experiences
	has_many :teachers, through: :experiences
	has_and_belongs_to_many :students
	has_many :sessions
end
