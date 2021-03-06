class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  has_many :stocks
  has_one_attached :main_photo
  has_many_attached :complementary_photos

  validates :name, presence: true
  validates :description, presence: true
  validates :composition, presence: true
  validates :brand, presence: true
  validates :category, presence: true
  validates :main_photo, presence: true
  validates :complementary_photos, length: { maximum: 4 }
end
