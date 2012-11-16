class Seguindo < ActiveRecord::Base
  belongs_to :pessoa
  attr_accessible :tipo

  def quem= quem
    self.quem_id = quem.id
    self.tipo = quem.class.name
  end

  def quem
    self.tipo.constantize.find(self.quem_id)
  end
end
