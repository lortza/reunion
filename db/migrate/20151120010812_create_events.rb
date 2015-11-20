class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.time :start_time
      t.time :end_time
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
