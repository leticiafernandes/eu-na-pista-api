class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :start_date
      t.string :start_local
      t.time :race_time
      t.string :finish_local
      t.decimal :value
      t.string :link

      t.timestamps
    end
  end
end
