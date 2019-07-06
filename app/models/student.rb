class Student < ApplicationRecord
  has_many :ducks

  validates :name, presence: true
  # validates :mod, :inclusion => 1..10
  validates :mod, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end

# Able to log a new student (and make sure that their name is not blank/mod is between 1 and 5)
