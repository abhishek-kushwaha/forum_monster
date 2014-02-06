class PagesController < ApplicationController
  before_filter :authorize, only:[:home]
  def home
  end

  def help
  end
end
