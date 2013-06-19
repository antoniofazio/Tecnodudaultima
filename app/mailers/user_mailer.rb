class UserMailer < ActionMailer::Base

  def registration_confirmation(user)  
      mail(:to => user.email.to_s, :subject => "Email enviada", :from => "andy08.flores@gmail.com")  
  end
end
