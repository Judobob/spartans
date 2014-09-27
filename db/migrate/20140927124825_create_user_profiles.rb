class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :string,last_name
      t.string,email :string,user_name
      t.string :string,mobile
      t.string :string

      t.timestamps
    end
  end
end
