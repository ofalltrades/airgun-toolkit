class CreateGroupings < ActiveRecord::Migration[4.2]
  def change
    create_table :groupings do |t|
      t.integer :pellet_id, null: false
      t.integer :distance,  null: false # in yards
      t.decimal :size,      null: false # center-to-center & in inches
    end
  end
end
