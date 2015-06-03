class Book < ActiveRecord::Base
	belongs_to :category
	belongs_to :author
	mount_uploader :image, ImageUploader
	is_impressionable counter_cache: true, unique: :all
	acts_as_commentable
end
