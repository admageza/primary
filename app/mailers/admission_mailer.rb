class AdmissionMailer < ApplicationMailer
 
  def admission_mail(emailu)
   
    mail to: emailu, subject: 'Congratulation, Your Child is registered'
  end
end
