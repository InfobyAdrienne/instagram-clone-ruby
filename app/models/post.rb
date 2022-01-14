class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  # for deletion purposes later 
  scope :active, -> { where active: true }
end
