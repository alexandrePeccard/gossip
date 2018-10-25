class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :mygossip
  belongs_to :comment, class_name: "Comment"
	has_many :comments, class_name: "Comment"
	# belongs_to :comment, foreign_key: "original_comment", class_name: 'Comment'
 # 	has_many :comment, class_name: 'Comment'
end