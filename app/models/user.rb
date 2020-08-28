class User < ApplicationRecord

  has_many :schedules
  has_many :global_sections
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, length: {maximum: 35}
  validates :department, length: {maximum: 255}
  validates :service_number, length: {maximum: 10}
end
