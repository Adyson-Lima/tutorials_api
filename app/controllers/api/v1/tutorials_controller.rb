class Api::V1::TutorialsController < ApplicationController

  before_action :set_tutorial, only: %i[show] # show update destroy

  def index
    @tutorials = Tutorial.all 
    render json: @tutorials
  end

  def show
    render json: @tutorial
  end

private

def set_tutorial
  @tutorial = Tutorial.find(params[:id])
end

def tutorial_params
  params.require(:tutorial).permit(:subject, :author)
end

end