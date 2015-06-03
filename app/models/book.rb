class Book < ActiveRecord::Base
	belongs_to :category
	belongs_to :author
	mount_uploader :image, ImageUploader
end
