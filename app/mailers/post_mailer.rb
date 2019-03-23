class PostMailer < ApplicationMailer
    def post_mail(emailer)

     mail to: "emailer", subject: "confirmation  of new post"
    end
end
