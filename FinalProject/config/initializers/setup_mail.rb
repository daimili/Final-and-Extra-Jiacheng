ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "localhost:3000",  
  :user_name            => "cspp52553rmaanddjc@gmail.com",  
  :password             => "135246abc",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  