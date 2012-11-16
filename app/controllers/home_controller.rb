class HomeController < ApplicationController
  before_filter :authenticate_pessoa!

  def index
  end
end
