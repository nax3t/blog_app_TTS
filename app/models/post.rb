class Post < ActiveRecord::Base
	validates :author, :title, :image, :body, presence: true
end
