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
)
student.save

Education.create(student_id: 1, university_name: "test university", degree: "test degree")

Capstone.create(student_id: 1, name: "capstone test", description: "capstoen description test")
