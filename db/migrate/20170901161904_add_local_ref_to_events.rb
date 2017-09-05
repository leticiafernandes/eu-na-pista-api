class AddLocalRefToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :local, foreign_key: true
  end
end
