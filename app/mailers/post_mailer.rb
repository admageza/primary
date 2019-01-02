class PostMailer < ApplicationMailer
    def post_mail(emailer)

   mail to: "emailer", subject: "confirmation  of new article"
  end
end
