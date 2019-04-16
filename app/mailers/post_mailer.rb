class PostMailer < ApplicationMailer
    def post_mail(emailu)
   
       mail to: emailu, subject: 'Congratulation, Your Post is successfull created'
    end
end
