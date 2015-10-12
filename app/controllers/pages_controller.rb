class PagesController < ActionController::Base
  layout 'application'
  def index

  end

  def presentation

  end

  def membres

  end

  def presse
    @source_path = Rails.root.join('app', 'assets', 'images', 'presse')
  end

  def contact

  end

end
