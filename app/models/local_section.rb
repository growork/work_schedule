class LocalSection < ApplicationRecord
  belongs_to :global_section
  has_many :employees
end
