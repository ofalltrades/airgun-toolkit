class AddLubedToPellets < ActiveRecord::Migration
  def change
    add_column :pellets, :lubed, :boolean, default: false
  end
end
