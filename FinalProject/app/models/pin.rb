class Pin < ActiveRecord::Base
  attr_accessible :board_id, :description, :user_id, :source
  belongs_to :user
  belongs_to :board
  has_many :likes, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  validates :source, :presence => true
end
