class NotificationMailer < ActionMailer::Base
  default from: "4caad4lyfe@gmail.com"

  def sign_up_notification(subscriber)

      @subscriber = subscriber

      mail(:to => @subscriber.email,
             :name => @subscriber.name,
             :subject => "Thanks for Signing Up",
             :unsub_link => unsub_email_link(@subscriber.email_token))   
  end

  def order_notification(subscriber)

      @subscriber = subscriber

      mail(:to => @subscriber.email)
  end

  def email_name
    mail :subject => "Mandrill rides the Rails!",
         :to      => "lana.rakhman@gmail.com",
         :from    => "4caad4lyfe@gmail.com"
  end

end
