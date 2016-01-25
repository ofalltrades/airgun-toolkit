class AddNotesToPellets < ActiveRecord::Migration
  def change
    add_column :pellets, :notes, :text
  end
end
