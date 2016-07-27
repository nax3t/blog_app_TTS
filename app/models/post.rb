class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :author, :title, :image, :body, presence: true
end
