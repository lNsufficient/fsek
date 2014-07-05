# encoding: UTF-8
class ContactMailer < ActionMailer::Base
  default from: 'Spindelman <svarainte@fsektionen.se>', parts_order: ["text/plain", "text/html"]
  default subject: 'Meddelande via Fsektionen.se'
  
  def contact_email(name,email,msg,kontakt)   
     @name = name
     @email = email
     @msg = msg
     @kontakt = kontakt    
      mail from: @name + ' <'+@email+'>', to: @kontakt.string1     
  end
end
