class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
