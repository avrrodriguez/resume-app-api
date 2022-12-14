# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

student = Student.new(
  first_name: "Bob",
  last_name: "Burgers",
  email: "bob@test.com",
  phone_number: 1234567890,
  short_bio: "This is a great bio so please hire me :).",
  linkedin_url: "htp://linkedin.test/bestuser",
  twitter_handle: "bobsome",
  website_blog_url: "bobblog.test",
  resume_url: "bobresume.test",
  github_url: "bobgithub.test",
  photo: "bob.jpeg",
  password: "password",
)
student.save

student = Student.new(
  first_name: "Lucy",
  last_name: "O'ball",
  email: "lucy@test.com",
  phone_number: 1235467890,
  short_bio: "This is an awesome bio, that is why I am a great candidate for any job.",
  linkedin_url: "htp://linkedin.test/lucyoball",
  twitter_handle: "lucydious",
  website_blog_url: "lucyblog.test",
  resume_url: "lucyresume.test",
  github_url: "lucygithub.test",
  photo: "lucy.jpeg",
  password: "password",
)
student.save

Skill.create(
  skill_name: "Ruby",
  student_id: 1,
)
Skill.create(
  skill_name: "Rails",
  student_id: 1,
)

Experience.create(
  start_date: "2001-05-10",
  end_date: "2010-05-10",
  job_title: "Lead Custodian",
  company_name: "Google",
  details: "I was the best custodian there",
  student_id: 1
)

Experience.create(
  start_date: "2015-10-22",
  end_date: "2019-09-20",
  job_title: "CEO",
  company_name: "Amazon",
  details: "Fun job",
  student_id: 1
)