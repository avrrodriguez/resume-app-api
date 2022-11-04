class CapstonesController < ApplicationController
  def index
    capstones = Capstone.all
    render json: capstones.as_json
  end

  def show
    capstone = Capstone.find_by(id: params[:id])
    render json: capstone.as_json
  end
end
