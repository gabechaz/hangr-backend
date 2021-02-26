class CreateHangs < ActiveRecord::Migration[6.0]
  def change
    create_table :hangs do |t|
      t.integer :user_id
      t.integer :activity_id
      t.integer :creator_id
      t.timestamps
    end
  end
end
