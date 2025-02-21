# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Blog.create([
  {
    title: "How Robotics is Changing Education",
    slug: "robotics-education",
    content: "Robotics is revolutionizing education by providing students with hands-on STEM learning experiences. Schools worldwide are integrating robotics into their curriculum to enhance problem-solving, critical thinking, and teamwork skills.\n\nAt Stemtrix, we believe that robotics is more than just coding and assembling machines. It’s about preparing students for the future job market, where automation and AI will dominate industries.\n\n## Benefits of Robotics in Education\n- Encourages creativity and innovation.\n- Improves students' understanding of STEM concepts.\n- Enhances teamwork and collaboration.\n- Prepares students for tech-driven careers.\n\n🚀 At Stemtrix, we offer LEGO Robotics training for students of all ages. Join us and empower your child with future-ready skills!\n\n📩 Contact: stemtrix@gmail.com",
    image_url: "https://ibb.co/HpG4z4rg",
    likes: 0,
    published_at: Time.now
  },
  {
    title: "The Future of AI in Schools: Transforming Education for the Next Generation",
    slug: "future-ai-in-schools",
    content: "Artificial Intelligence (AI) is no longer a futuristic concept—it is here, reshaping education. Schools are integrating AI-powered tools to personalize learning and prepare students for an AI-driven future.\n\nAt Stemtrix, we believe AI and robotics will play a crucial role in the next era of education. This article explores how AI is transforming classrooms.\n\n## How AI is Enhancing Learning in Schools\n- **Personalized Learning**: AI tailors lessons to individual student needs.\n- **Smart Classrooms**: AI automates tasks like attendance tracking and grading.\n- **Future Careers**: AI learning helps students prepare for jobs in tech and robotics.\n\nCountries like China and the USA have already integrated AI into education. Kenya and other African nations are now embracing AI and STEM programs to bridge the digital divide.\n\n🚀 Want to introduce AI and robotics to your school? Contact Stemtrix today!\n\n📩 Email: stemtrix@gmail.com",
    image_url: "https://ibb.co/7Jf3jg8f",
    likes: 0,
    published_at: Time.now
  }
])
