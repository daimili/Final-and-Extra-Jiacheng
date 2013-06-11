class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :food_type
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
