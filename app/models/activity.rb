class Activity < ActiveRecord::Base
  has_many :comments, as: :commentable
end #Activity
