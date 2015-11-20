class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :venue
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :website
      t.text :description

      t.timestamps null: false
    end
  end
end
