class Board < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :user_id
  belongs_to :user
  belongs_to :category
  has_many :pins, :dependent => :destroy

 
end
