class User < ActiveRecord::Base
    attr_accessible :name, :password, :password_confirmation, :email, :loyaltyPoint
    has_secure_password
   	has_many :reservations, :dependent => :destroy


   	validates :name, :email, :password, :presence => true
  	validates :email, :uniqueness => true
    validates :name, :uniqueness => true
end
