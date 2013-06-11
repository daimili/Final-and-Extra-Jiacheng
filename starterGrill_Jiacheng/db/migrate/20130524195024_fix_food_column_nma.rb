class FixFoodColumnNma < ActiveRecord::Migration
 	def change
 		rename_column :foods, :type, :food_type
 	end
end
