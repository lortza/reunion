class AddStateIdToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :state, index: true, foreign_key: true
  end
end
