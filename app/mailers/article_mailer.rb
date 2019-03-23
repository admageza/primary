class ArticleMailer < ApplicationMailer
    def article_mail(emailer)

     mail to: "emailer", subject: "confirmation  of new article"
    end
end
