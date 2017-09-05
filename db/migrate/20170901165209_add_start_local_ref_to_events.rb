class AddStartLocalRefToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :start_local, foreign_key: true
  end
end
