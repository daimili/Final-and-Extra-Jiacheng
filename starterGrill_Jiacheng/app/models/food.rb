class Food < ActiveRecord::Base
  attr_accessible :description, :name, :price, :food_type
end
