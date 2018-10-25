class Like < ActiveRecord::Base
	belongs_to :user
	belongs_to :mygossip
	belongs_to :comment
end