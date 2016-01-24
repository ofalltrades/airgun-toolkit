class CreatePellets < ActiveRecord::Migration
  def change
    create_table :pellets do |t|
      t.string  :brand,         null: false
      t.string  :name,          null: false
      t.decimal :weight,        null: false
      t.decimal :caliber,       null: false
      t.decimal :diameter                     # exact measurement
      t.decimal :velocity                     # in FPS
      t.decimal :muzzel_energy
      t.decimal :muzzel_energy
      t.string  :material                     # what pellet is made of
      t.integer :rating                       # personal rating
      t.integer :gun_id,        null: false
    end
  end
end
