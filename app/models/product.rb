class Product < ApplicationRecord
  mount_uploaer :image, ImageUploader
end
