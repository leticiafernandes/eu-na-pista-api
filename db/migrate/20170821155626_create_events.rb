class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :start_date
      t.time :race_time
      t.decimal :value
      t.string :link

      t.timestamps
    end

    add_foreign_key :events, :locals    
  end
end
