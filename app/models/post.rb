class Post < ApplicationRecord
	has_attached_file :image, styles: { medium: "500x500#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	belongs_to :user
	belongs_to :category
end