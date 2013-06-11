class Like < ActiveRecord::Base
  attr_accessible :pin_id, :user_id
  belongs_to :user
  belongs_to :pin

  validates_uniqueness_of :user_id, :scope => :pin_id
end
