class Post < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: true

	belongs_to :person
	belongs_to :user
end
