class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students.as_json
  end

  def show
    student = Student.find_by(id: params["id"])
    render json: student.as_json
  end

  def create
    student = Student.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"],
      short_bio: params["short_bio"],
      linkedin_url: params["linkedin_url"],
      twitter_handle: params["twitter_handle"],
      website_blog_url: params["website_blog_url"],
      resume_url: params["resume_url"],
      github_url: params["github_url"],
      photo: params["photo"],
    )

    if student.save
      render json: student.as_json
    else
      render json: { "errors": student.errors.full_message }, status: :unprocessable_entity
    end
  end

  def update
    student = Student.find_by(id: params["id"])
    student.first_name = params["first_name"]
    student.last_name = params["last_name"]
    student.email = params["email"]
    student.phone_number = params["phone_number"]
    student.short_bio = params["short_bio"]
    student.linkedin_url = params["linkedin_url"]
    student.twitter_handle = params["twitter_handle"]
    student.website_blog_url = params["website_blog_url"]
    student.resume_url = params["resume_url"]
    student.github_url = params["github_url"]
    student.photo = params["photo"]

    if student.save
      render json: student.as_json
    else
      render json: { "errors": student.errors.full_message }, status: :unprocessable_entity
    end
  end

  def destroy
    student = Student.find_by(id: params["id"])
    student.destroy
    render json: { "message": "student gone" }
  end
end
