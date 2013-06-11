class UserMailer < ActionMailer::Base
    default from: "cspp52553rmaanddjc@gmail.com"

  def reservation_confirm_email(user)
    @user = user
    @url  = "localhost:3000/"
    mail(:to => user.email, :subject => "Cspp52553 StarterGrill by Runbai Ma: You have a reservation on our website!")
  end

end
