class SkillsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    skills = Skill.all
    render json: skills.as_json
  end

  def show
    skill = Skill.find_by(id: params["id"])
    render json: skill.as_json
  end

  def create
    skill = Skill.new(
      skill_name: params["skill_name"],
      student_id: current_student.id
    )
    if skill.save
      render json: {message: "Created Successfully!"}
    else
      render json: {errors: skill.errors.full_messages}, status: :unprocessable_entity  
    end
  end

  def update
    skill = Skill.find_by(id: params["id"])
    skill.skill_name = params["skill_name"] || skill.skill_name
    skill.student_id = params["stusent_id"] || skill.student_id

    if skill.save
      render json: {message: "Updated Successfully!"}
    else
      render json: {errors: skill.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    skill = Skill.find_by(id: params["id"])
    skill.destroy
    render json: {message: "Destroyed Successfully!"}
  end

end
