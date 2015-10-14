class ContactMailer < ApplicationMailer
  def contact_email(content)
    @content = content
    mail(subject: "Quelqu'un vous a contacté sur le site Chinese Business Club")
  end
end
