class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
  belongs_to :user
  
	validates :title, :image, :body, presence: true
	before_create :title_case

	protected
		def title_case
			self.title = self.title.downcase.titleize
		end
end
