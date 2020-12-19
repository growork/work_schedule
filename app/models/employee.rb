class Employee < ApplicationRecord
  serialize :days_type, Hash

  belongs_to :global_section
  has_many :days
end
