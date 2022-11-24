class Product < ApplicationRecord
    has_many :product_categories
    has_many :product_images
    has_many :product_attributes_assoc
    has_one_attached :ProductImage
end
