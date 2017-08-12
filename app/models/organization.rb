class Organization < ApplicationRecord
  belongs_to :language
  belongs_to :app_country
  has_many :teachers
  has_many :students
end
