class CreateMaybes < ActiveRecord::Migration[6.0]
  def change
    create_table :maybes do |t|
      t.integer :hang_id
      t.integer :user_id
      t.timestamps
    end
  end
end
