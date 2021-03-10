class CreateHangs < ActiveRecord::Migration[6.0]
  def change
    create_table :hangs do |t|
      t.integer :user_id
      t.string :game_image
      t.string :game_id
      t.string :game_name
      t.string :location
      t.timestamp :time
      t.string :time_string
      t.integer :people_needed
      t.timestamps
    end
  end
end
