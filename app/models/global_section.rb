class GlobalSection < ApplicationRecord
  belongs_to :user
  has_many :employees
  has_many :subsections

  validates :title, presence: true
end
