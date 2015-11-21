class Rsvp < ActiveRecord::Base
  belongs_to :rsvpable, polymorphic: true
end #RSVP
