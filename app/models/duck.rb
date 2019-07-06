class Duck < ApplicationRecord
  belongs_to :student
  # belongs_to :student, required: false

  validates :name, presence: true
  validates :description, presence: true
end

# rails g model student name:string mod:integer
# rails g controller students index show new edit

# rails g model duck name:string description:string student:belongs_to
# rails g controller ducks index show new edit

# rails db:migrate
# rails db:seed
