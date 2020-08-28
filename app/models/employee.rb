class Employee < ApplicationRecord
  belongs_to :local_section
  has_many :days
end
