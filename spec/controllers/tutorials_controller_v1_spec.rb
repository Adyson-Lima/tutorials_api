require 'rails_helper'

RSpec.describe Api::V1::TutorialsController, type: :controller do

  before{@tutorial = Tutorial.create(subject: 'mainframes', author: 'eu')}

  describe 'GET /api/v1/tutorials' do
    it 'Consegue listar todos os tutorials e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/tutorials/id' do
    it 'Consegue listar um tutorial especifico e retornar status 200?' do
      get :show, params: {id: @tutorial.id}
      expect(response.body).to include_json(id: @tutorial.id)
      expect(response).to have_http_status(200)
    end
  end

end