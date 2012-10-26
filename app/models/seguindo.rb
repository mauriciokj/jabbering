class Seguindo < ActiveRecord::Base
  belongs_to :pessoa
  attr_accessible :tipo
end
