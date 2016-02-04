class PagesController < ApplicationController
  layout 'application'
  require 'aws-sdk'
  def index

  end

  def presentation
    @source_path = Rails.root.join('app', 'assets', 'images', 'presentation')
    # Because you're never going to commit credentials to source. Please.
    if Rails.env.production?
      Aws.config.update({
          :access_key_id => ENV['S3_KEY'],
          :secret_access_key => ENV['S3_SECRET'],
      })
    else
      creds = JSON.load(File.read('secrets.json'))
      Aws.config.update({
          :access_key_id => creds['AccessKeyId'],
          :secret_access_key => creds['SecretAccessKey'],
      })
    end
    bucket_name = 'cbc-assets'
    s3 = Aws::S3::Client.new(region:'eu-central-1')
    resp = s3.list_objects(bucket: 'cbc-assets')
    @images = []
    # resp.contents.each_with_index do |object, index|
    #   @images << object.key unless index == 0
    #   # puts "#{object.key} => #{object.value}"
    # end
    @images = resp.contents.map(&:key)
    @images.delete_at(0)
  end

  def membres
    @members = Member.all.order(name: :asc)
  end

  def livredor
    @quotes = Quote.all.order(author_fr: :asc)
  end

  def comite

  end

  def grandes_fortunes
    @fortunes = Fortune.all.order(global_ranking: :asc)
  end

  def presse
    @source_path = Rails.root.join('app', 'assets', 'images', 'presse')
    @articles = PressArticle.all
    @links = PressLink.all
  end

  def contact

  end

  def send_mail
    @content = params
    ContactMailer.contact_email(@content).deliver_now
    redirect_to contact_path, notice: 'Merci, votre message a bien été envoyé.'
  end

end
