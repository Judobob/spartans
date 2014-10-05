class CreateEventDetails < ActiveRecord::Migration
  def change
    create_table :event_details do |t|
      t.string :name
      t.text :description
      t.integer :images
      t.integer :attachments
   
      t.timestamps
    end
  end
end
