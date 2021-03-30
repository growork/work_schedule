class Employee < ApplicationRecord

  belongs_to :global_section

  def self.get_employee(employee_id)
    self.find(employee_id)
  end
end
