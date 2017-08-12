class Language < ApplicationRecord
  has_and_belongs_to_many :app_countries
  has_many :organizations
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :students
  has_many :sessions
end
