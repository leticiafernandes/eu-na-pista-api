class CreateLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :locals do |t|
      t.string :local_text
      t.string :comp_text
      t.decimal :lat, :decimal, {:precision=>10, :scale=>6}
      t.decimal :lng, :decimal, {:precision=>10, :scale=>6}

      t.timestamps
    end
  end
end
