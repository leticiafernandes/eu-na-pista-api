class CreateUserEventXrefs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_event_xrefs do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
