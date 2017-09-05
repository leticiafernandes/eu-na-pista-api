class RemoveLocalFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_reference :events, :local, foreign_key: true
  end
end
