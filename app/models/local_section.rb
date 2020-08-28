class LocalSection < ApplicationRecord
  belongs_to :gloabal_section
  has_many :employees
end
