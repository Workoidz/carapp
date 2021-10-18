class User < ApplicationRecord
	has_many :friendships
  	has_many :friends, :through => :friendships
  	has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  	has_many :followed_by_users, :through => :inverse_friendships, :source => :user
end
