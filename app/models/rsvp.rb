class Rsvp < ActiveRecord::Base
  belongs_to :rsvpable, polymorphic: true

  TRANSPORTATION = ["will drive", "needs ride", "has car , prefers to ride"]

  validates :transportation, inclusion: { in: TRANSPORTATION }
end #RSVP
