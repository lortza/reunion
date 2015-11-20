class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment
      t.belongs_to :commentable, polymorphic: true
      t.timestamps null: false
    end #create_table
    add_index :comments, [:commentable_id, :commentable_type]
  end #change
end #CreateComments
