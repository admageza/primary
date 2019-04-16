class ArticleMailer < ApplicationMailer
    def article_mail(emailu)
   
       mail to: emailu, subject: 'Congratulation, Your Article is successfull created'
    end
end
