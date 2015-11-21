class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :transportation
      t.text :comment
      t.belongs_to :rsvpable, polymorphic: true

      t.timestamps null: false
    end #table
    add_index :rsvps, [:rsvpable_id, :rsvpable_type]
  end #change
end #CreateRsvps
