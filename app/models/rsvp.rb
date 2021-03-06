class Rsvp < ActiveRecord::Base
  belongs_to :rsvpable, polymorphic: true

  CAR_POOL_PREFERENCE = [ "will drive", "needs ride", "has car, prefers to ride", "will find own way there" ]

  validates :transportation, inclusion: { in: CAR_POOL_PREFERENCE }
end #RSVP
