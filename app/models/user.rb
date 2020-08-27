class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :destroy
  has_many :philosophers, through: :bookings, dependent: :destroy
  # user = ["student", "agent"]
  # validates :role, inclusion: { in %w(student agent) }
end