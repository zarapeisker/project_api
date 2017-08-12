class Session < ApplicationRecord
  belongs_to :language
  belongs_to :teacher
  belongs_to :student
  belongs_to :subject
  belongs_to :review
end
