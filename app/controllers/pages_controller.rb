class PagesController < ApplicationController
  layout 'application'
  def index

  end

  def presentation
    @source_path = Rails.root.join('app', 'assets', 'images', 'presentation')
  end

  def membres

  end

  def livredor

  end

  def comite

  end

  def presse
    @source_path = Rails.root.join('app', 'assets', 'images', 'presse')
  end

  def contact

  end

  def send_mail
    @content = params
    ContactMailer.contact_email(@content).deliver_now
    redirect_to contact_path, notice: 'Merci, votre message a bien été envoyé.'
  end

end
