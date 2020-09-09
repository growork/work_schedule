class Employee < ApplicationRecord
  belongs_to :local_section
  belongs_to :global_section
  has_many :days
end
