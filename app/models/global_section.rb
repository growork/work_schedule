class GlobalSection < ApplicationRecord
  belongs_to :schedule
  has_many :local_sections
end
