class CreateSignups < ActiveRecord::Migration[6.0]
  def change
    create_table :signups do |t|
      t.integer :user_id
      t.integer :hang_id
      t.timestamps
    end
  end
end
