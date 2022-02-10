class CreatePoints < ActiveRecord::Migration[6.1]
  def change
    create_table :points do |t|
      t.integer :member_id
      t.integer :event_id
      t.integer :points

      t.timestamps
    end
  end
end
