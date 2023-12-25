require 'rails_helper'

RSpec.describe Tutorial, type: :model do

  before{@tutorial = Tutorial.new}

  describe 'subject consegue ser preenchido?' do
    @tutorial.subject = ''
    expect(@tutorial.subject).to eq('Ruby on Rails')
  end

end