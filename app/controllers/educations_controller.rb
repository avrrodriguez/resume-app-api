class EducationsController < ApplicationController
  def index
    educations = education.all
    render json: educations.as_json
  end

  def show
    education = Education.find_by(id: params[:id])
    render json: education.as_json
  end

  def create
    education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details]
    )
    education.save
    render json: education.as_json
  end
end
