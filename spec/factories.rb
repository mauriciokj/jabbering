FactoryGirl.define do

  factory :pessoa do
    email "mauriciokj@gmail.com"
    password "senha123"
    password_confirmation "senha123"
  end

  #factory :seguindo do
  #  quem proc {|p| p.association pessoa }
  #end

end