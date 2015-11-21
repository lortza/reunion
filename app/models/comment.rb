class Comment < ActiveRecord::Base
  # attr_accessible :name, :comment
  belongs_to :commentable, polymorphic: true
end #Comment
