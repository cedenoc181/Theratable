class CreateFlexologists < ActiveRecord::Migration[7.0]
  def change
    create_table :flexologists do |t|
      t.string :location #what area flex works in
      t.string :bio #meet your flex
      t.text :experience #where flex worked, how long 
      t.string :education #education licenses
      t.string :studio #studio related too 
      t.float :rating #feed back 
      t.string :profile_pic #profile pics
      t.string :photo_gallery #galleries photos related to work
      t.integer :user_id
      t.integer :schedule_id
      t.integer :account_id
      
      t.timestamps
    end
  end
end
