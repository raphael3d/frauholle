class ContactMailer < ActionMailer::Base
  default :from => "from@example.com"
  
  def registration_confirmation(contact)
     @contact = contact.email
     @name = contact.name
    mail(:to => 'frauholle.peham@gmail.com', :subject => "Kontakt an FrauHolle")
  end
end
