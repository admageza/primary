class UserMailer < ApplicationMailer
    def user_mail(user)
        @user = user
       mail to: user, subject: "Your e-mail is created"
    end
end
