class SkillsController < ApplicationController

  def index
    skills = Skill.all
    render json: skills.as_json
  end

end
