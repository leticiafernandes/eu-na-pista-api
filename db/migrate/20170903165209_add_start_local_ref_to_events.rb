class AddStartLocalRefToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :start_local_id, :integer, index: true
    add_foreign_key :events, :locals, column: :start_local_id
  end
end
