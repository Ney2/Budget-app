class User < ApplicationRecord
    has_many :groups, dependent: :destroy
  has_many :entities, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
