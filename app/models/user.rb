class User < ActiveRecord::Base
  # has_many :conversations, :foreign_key => :sender_id
  has_many :privatemessages
  has_many :likes
  has_many :comments
  has_many :mygossip
end