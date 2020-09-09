class GlobalSection < ApplicationRecord
  belongs_to :user
  has_many :employees

  validates :title, presence: true
end
