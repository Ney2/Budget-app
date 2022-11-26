class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, dependent: :destroy
  has_many :entities, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy
  validates :name, presence: true, length: { in: 1..80 }
  validates :email, presence: true, length: { in: 1..80 }, uniqueness: true
  validates :password, presence: true, length: { in: 6..80 }
end
