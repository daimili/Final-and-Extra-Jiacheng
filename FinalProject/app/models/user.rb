class User < ActiveRecord::Base

  after_update :send_pasword_changing_notification
  after_create :send_welcome_email
  before_destroy :send_destroy_survey_email
  attr_accessible :email, :gender, :name, :password, :password_confirmation

  has_many :boards, :dependent => :destroy
  has_many :pins, :dependent => :destroy
  has_many :follows, :dependent => :destroy
  has_many :followers, :through => :follows, :dependent => :destroy
  has_many :inverse_follows,  :class_name => "Follow", :foreign_key => "follower_id", :dependent => :destroy
  has_many :inverse_followers, :through => :inverse_follows, :source => :user, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :follow_boards, :dependent => :destroy
  
  validates :name, :email, :password, :presence => true
  validates :email, :uniqueness => true

  has_secure_password

  def send_pasword_changing_notification
      if self.password_digest_changed?
        UserMailer.password_changing_notification(self).deliver
      end
  end

  def send_welcome_email
    UserMailer.welcome_email(self).deliver
  end

  def send_destroy_survey_email
    UserMailer.user_survey(self).deliver
  end


end
