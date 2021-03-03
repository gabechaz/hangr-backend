class CreateHangs < ActiveRecord::Migration[6.0]
  def change
    create_table :hangs do |t|
      t.string :activity_name
      t.integer :user_id
      t.integer :activity_id
      t.string :location
      t.integer :time
      t.integer :people_needed
      t.timestamps
    end
  end
end
