class ExperiencesController < ApplicationController

  def index
    experiences = Experience.all

    render json: experiences.as_json
  end

  def show
    experience = Experience.find_by(id: params["id"])
    
    render json: experience.as_json
  end

  def create
    experience = Experience.new(
      student_id: params["student_id"],
      start_date: params["start_date"],
      end_date: params["end_date"],
      job_title: params["job_title"],
      company_name: params["company_name"],
      details: params["details"]
    )

    if experience.save
      render json: {message: "Created Successfully!"}
    else
      render json: {errors: skill.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    experience = Experience.find_by(id: params["id"])

    experience.student_id = params["student_id"] || experience.student_id,
    experience.start_date = params["start_date"] || experience.start_date,
    experience.end_date = params["end_date"] || experience.end_date,
    experience.job_title = params["job_title"] || experience.job_title,
    experience.company_name = params["company_name"] || experience.company_name,
    experience.details = params["details"] || experience.details

    if experience.save
      render json: {message: "Updated Successfully!"}
    else
      render json: {errors: skill.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    experience = Experience.find_by(id: params["id"])
    experience.destroy

    render json: {message: "Destroyyyyed"}
  end

end
