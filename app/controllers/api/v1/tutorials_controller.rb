class Api::V1::TutorialsController < ApplicationController

  before_action :set_tutorial, only: %i[show update] # show update destroy

  def index
    @tutorials = Tutorial.all 
    render json: @tutorials
  end

  def show
    render json: @tutorial
  end

  def create
    @tutorial = Tutorial.new(tutorial_params)
    if @tutorial.save
      render json: @tutorial, status: :created, location: api_v1_tutorial_url(@tutorial)
    else
      render json: @tutorial.errors, status: :unprocessable_entity
    end
  end

  def update
    if @tutorial.update(tutorial_params)
      render json: @tutorial
    else
      render json: @tutorial.errors, status: :unprocessable_entity
    end
  end

private

def set_tutorial
  @tutorial = Tutorial.find(params[:id])
end

def tutorial_params
  params.require(:tutorial).permit(:subject, :author)
end

end