class AddLubedToPellets < ActiveRecord::Migration[4.2]
  def change
    add_column :pellets, :lubed, :boolean, default: false
  end
end
