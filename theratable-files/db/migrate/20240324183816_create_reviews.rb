class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :feedback
      t.float :rating, default: 0
      t.date :reviews_created_on
      t.boolean :recommend_to_others, default: true
      t.integer :likes #others thought review to be helpful
      t.timestamps
    end
  end
end
