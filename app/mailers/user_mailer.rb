class UserMailer < ActionMailer::Base
   default :from => "a214765@uach.mx"

  def welcome_email(user)
    @user = user
    #@url  = "http://example.com/login"
    mail(:to => user.email,
         :subject => "Mail desde Ruby")
  end

   def correo_plantilla(plantilla)
    @correo_plantilla = plantilla
    #@url  = "http://example.com/login"
    mail(:to => "krn_466@hotmail.com",
         :subject => "Mail desde Ruby")
  end
end
