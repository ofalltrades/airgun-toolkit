class CreateGuns < ActiveRecord::Migration
  def change
    create_table :guns do |t|
      t.string    :brand,       null: false
      t.string    :model,       null: false
      t.integer   :generation
      t.float     :caliber,     null: false
      t.string    :user_id,     null: false
    end
  end
end
