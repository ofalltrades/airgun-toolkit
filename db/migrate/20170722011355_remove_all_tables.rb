class RemoveAllTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :groupings
    drop_table :users
    drop_table :pellets
    drop_table :guns
  end
end
