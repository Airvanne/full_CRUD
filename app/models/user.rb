class User < ApplicationRecord

	has_many :comments
	has_many :sub_comments
	has_many :gossips
	has_many :likes
end
