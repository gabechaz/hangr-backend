class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :image_url
      t.integer :reviewer_id
      t.integer :reviewee_id
      t.integer :hang_id
      t.integer :karma
      t.string :comment
      

      t.timestamps
    end
  end
end
