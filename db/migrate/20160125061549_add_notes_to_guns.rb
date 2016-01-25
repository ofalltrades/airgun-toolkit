class AddNotesToGuns < ActiveRecord::Migration
  def change
    add_column :guns, :notes, :text
  end
end
