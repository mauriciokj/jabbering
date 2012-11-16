require 'spec_helper'

describe Seguindo do
  before :each do
    @pessoa = FactoryGirl.create(:pessoa)
    @seguindo = Seguindo.new
  end

  describe "ao atribuir quem" do

    it "deve preencher o tipo e o quem_id com a referencia a quem foi atribuida " do
      @seguindo.quem = @pessoa
      @seguindo.quem_id.should == @pessoa.id
      @seguindo.tipo.should == "Pessoa"
    end

  end

  describe "ao solicitar quem" do
    it "deve retornar o objeto referenciado pelo tipo e quem_id" do
      @seguindo.quem = @pessoa
      @seguindo.quem.should == @pessoa
    end
  end
end