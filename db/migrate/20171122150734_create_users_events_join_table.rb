class CreateUsersEventsJoinTable < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :users, :events
  end
end
