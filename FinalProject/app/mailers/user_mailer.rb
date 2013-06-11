class UserMailer < ActionMailer::Base
  default from: "cspp52553rmaanddjc@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = "localhost:3000/"
    mail(:to => user.email, :subject => "Cspp52553: Welcome to My Awesome Site, Runbai Ma and JiaCheng Dai")
  end

  def password_changing_notification(user)
  	@user = user
  	mail(:to => user.email, :subject => "Cspp52553: Your password has changed on our website, Runbai Ma and JiaCheng Dai ")
  end
  
  def user_survey(user)
    @user = user
    mail(:to => user.email, :subject => "Cspp52553: Why you leave us? a small survey! ")
  end

end
