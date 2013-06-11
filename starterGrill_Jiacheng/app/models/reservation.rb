class Reservation < ActiveRecord::Base
  attr_accessible :date, :guest_number, :user_id
  belongs_to :user
  before_create :increase_points
  before_create :send_email
  after_destroy :decrease_points
  def increase_points
    user = User.find(self.user_id)
  	point = user.loyaltyPoint + 10
    user.update_column(:loyaltyPoint, point)

  end

  def decrease_points
    user = User.find(self.user_id)
    point = user.loyaltyPoint - 10
    user.update_column(:loyaltyPoint, point)

  end

  def send_email
  	user = User.find(self.user_id)
  	UserMailer.reservation_confirm_email(user).deliver
  end

end
