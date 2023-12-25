require 'rails_helper'

RSpec.describe Tutorial, type: :model do

  before{@tutorial = Tutorial.new}

  describe 'testes de preenchimento do model Tutorial' do

    it 'subject consegue ser preenchido?' do
      @tutorial.subject = 'Ruby on Rails'
      expect(@tutorial.subject).to eq('Ruby on Rails')
    end

    it 'author consegue ser preenchido?' do
      @tutorial.author = ''
      expect(@tutorial.author).to eq('eu')
    end

  end  

end