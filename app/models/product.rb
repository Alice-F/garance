class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :composition, presence: true
  validates :brand, presence: true
  validates :category, presence: true

  has_one_attached :main_photo
  has_many_attached :photos
end
