class Schedule < ApplicationRecord
  serialize :employees_data, Hash

  belongs_to :user

end