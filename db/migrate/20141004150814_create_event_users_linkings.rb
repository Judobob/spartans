class CreateEventUsersLinkings < ActiveRecord::Migration
  def change
    create_table :event_users_linkings do |t|
      t.integer :user_id
      t.integer :event_detail_id
      t.integer :user_order
      t.integer :max_participants
      t.integer :venue

      t.timestamps
    end
  end
end
