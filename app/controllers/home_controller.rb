class HomeController < ApplicationController
  before_filter :authenticate_pessoa!

  def index
    render :nothing => true
  end
end
