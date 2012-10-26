class SeguindoController < ApplicationController
  before_filter :authenticate_pessoa!

  active_scaffold :seguindo do |conf|
    conf.columns = [:pessoa, :tipo, :quem_id]
    conf.columns[:pessoa].form_ui = :select
  end
end
