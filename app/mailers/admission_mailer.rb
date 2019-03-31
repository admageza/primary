class AdmissionMailer < ApplicationMailer
  default from: "admin@saintdominic.com"

  def admission_mail(emailu)
   
    mail to: emailu, subject: 'Congratulation, Your Child is registered'
  end
end
