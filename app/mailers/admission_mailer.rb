class AdmissionMailer < ApplicationMailer
  default from: "admin@saintdominic.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
