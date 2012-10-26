class PessoasController < ApplicationController
  before_filter :authenticate_pessoa!

  active_scaffold do |config|
    config.columns = [:email, :password, :password_confirmation]
    config.list.columns = [:email]
    config.columns[:password].form_ui = :password
    config.columns[:password_confirmation].form_ui = :password
  end
end
