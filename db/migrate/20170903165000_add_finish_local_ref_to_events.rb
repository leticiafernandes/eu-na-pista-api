class AddFinishLocalRefToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :finish_local_id, :integer, index: true
    add_foreign_key :events, :locals, column: :finish_local_id
  end
end
