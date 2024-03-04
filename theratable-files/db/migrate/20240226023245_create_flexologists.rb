class CreateFlexologists < ActiveRecord::Migration[7.0]
  def change
    create_table :flexologists do |t|
      t.string :location 
      t.string :bio
      t.text :experience
      t.string :education
      t.string :profile_pic 
      t.string :photo_gallery
      t.integer :user_id
      t.integer :schedule_id
      t.integer :account_id
      
      t.timestamps
    end
  end
end
