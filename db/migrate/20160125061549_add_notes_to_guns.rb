class AddNotesToGuns < ActiveRecord::Migration[4.2]
  def change
    add_column :guns, :notes, :text
  end
end
