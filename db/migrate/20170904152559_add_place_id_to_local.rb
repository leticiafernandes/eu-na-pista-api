class AddPlaceIdToLocal < ActiveRecord::Migration[5.1]
  def change
    add_column :locals, :place_id, :string
  end
end
