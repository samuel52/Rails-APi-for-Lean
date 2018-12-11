class Post < ApplicationRecord
	validates :title, :body, presence: true

	belongs_to :person
	belongs_to :user
end
