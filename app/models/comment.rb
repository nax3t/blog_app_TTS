class Comment < ActiveRecord::Base
  belongs_to :post
  validates :author, :body, presence: true,
  													length: { minimum: 3 }
end
