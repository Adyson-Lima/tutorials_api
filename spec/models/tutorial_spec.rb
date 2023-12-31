require 'rails_helper'

RSpec.describe Tutorial, type: :model do

  before{@tutorial = Tutorial.new}

  describe 'testes de preenchimento do model Tutorial' do

    it 'subject consegue ser preenchido?' do
      @tutorial.subject = 'Ruby on Rails'
      expect(@tutorial.subject).to eq('Ruby on Rails')
    end

    it 'author consegue ser preenchido?' do
      @tutorial.author = 'eu'
      expect(@tutorial.author).to eq('eu')
    end

  end  

  describe 'testes de validação do model Tutorial' do

    it 'objeto tutorial valido com campos obrigatorios preenchidos?' do
      @tutorial.subject = 'mainframes'
      @tutorial.author = 'eu'
      expect(@tutorial).to be_valid
    end

    it 'objeto tutorial invalido com campos obrigatorios não preenchidos?' do
      tutorial = Tutorial.new
      expect(tutorial).to be_invalid
    end

  end

end