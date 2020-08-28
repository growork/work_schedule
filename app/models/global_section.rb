class GlobalSection < ApplicationRecord
  belongs_to :user
  has_many :local_sections
end
