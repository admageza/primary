class AdmissionMailer < ApplicationMailer
    def admission_mail(emailu)
     
      mail to: emailu, subject: "Your admission is already received!"
    end
end
