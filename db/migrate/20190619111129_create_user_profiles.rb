class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.string :full_name,  :null => false
      t.string :gender, :null => false
      t.string :adress, :null => false
      t.string :phone_number, :null => false
      t.belongs_to(:user, foreign_key: true)
      
      t.timestamps
    end
  end
end
