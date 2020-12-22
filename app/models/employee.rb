class Employee < ApplicationRecord

  belongs_to :global_section
  has_many :days
end
