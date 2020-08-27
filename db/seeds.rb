require 'faker'

puts "Sending philosophers back . . ."

Philosopher.delete_all

puts "Goodbye users . . ."

User.delete_all


puts "Calling students . . ."

1.times do
  student = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "123456",
    role: "student"
    )
  end
  
  puts "Greedy agents . . ."
  
1.times do
  agent = User.create!(
    name: Faker::Name.name ,
    email: Faker::Internet.email,
    password: "123456",
    role: "agent"
    )
    puts "Time travelling philosophers . . ."
    6.times do
      philosopher = Philosopher.create!(
        name: Faker::GreekPhilosophers.name,
        quote: Faker::GreekPhilosophers.quote,
        user_id: agent.id
      )
  end
    
end

puts "Done."
