# -*- encoding : utf-8 -*-
class AlarmMailer < ActionMailer::Base
  default from: "nobody@measurinator.com"

  def alarm(email, text)
    mail(:to => email, :subject => text) do |format|
      format.html { render :plain => text }
      format.text { render :plain => text }
    end
  end
end
