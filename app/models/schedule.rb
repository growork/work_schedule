class Schedule < ApplicationRecord
  belongs_to :user
  has_many :global_sections

  validates :user, presence: true

end
