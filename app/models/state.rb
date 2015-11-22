class State < ActiveRecord::Base
  has_many :events
  has_many :activities
end #State
