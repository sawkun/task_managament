class Task < ApplicationRecord
  belongs_to :user
  
  validates :name, presence: true
  validates :detail, presence: true, length: { minimum: 5 } 
end
