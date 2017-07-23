class AddNotesToPellets < ActiveRecord::Migration[4.2]
  def change
    add_column :pellets, :notes, :text
  end
end
