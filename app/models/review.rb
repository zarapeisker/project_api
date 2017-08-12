class Review < ApplicationRecord
	has_one :session
	has_one :teacher, through: :session
	has_one :student, through: :session
end
