class EducationsController < ApplicationController
  def index
    educations = education.all
    render json: educations.as_json
  end

  def create
    education = Education.new(
      
    )
    education.save
    render json: education.as_json
  end
end
