class RemoveStateFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :state, :string
  end
end
