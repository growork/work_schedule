class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: {maximum: 35}
  validates :department, presence: true, length: {maximum: 255}
  validates :service_number, presence: true, length: {maximum: 10}
  validates :service_number, uniqueness: true
end
