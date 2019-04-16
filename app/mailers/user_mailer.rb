class UserMailer < ApplicationMailer
    def user_mail(emailu)
   
    mail to: emailu, subject: 'Congratulation, Your account is successfull created'
  end
end
