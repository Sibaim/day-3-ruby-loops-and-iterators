def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

@num_chicken_slides = 2
@num_cheese_slides = 2

ingredients = [
  { name: 'chicken', quantity: @num_chicken_slides },
  { name: 'cheese', quantity: @num_cheez_slides },
  { name: 'oil', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
]
puts "*    Let's cook a Skalob    *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "\n"
  print_divider

  puts "Got all ingredients you need? (Y/N)"
  answer = gets.chomp.upcase

  if answer == 'N'
    puts "You need to go shopping"
    print_progress_bar
  elsif answer == 'Y'
    puts "Let's start cooking!"
    break
  else
    puts "That's not a valid input. Try again."
  end
end

steps = [
  { description: "stuff the chicken", action: "put cheese on the chicken slides and fold it" },
  { description: "salt the food", action: "spread some salt on the chicken" },
  { description: "heating the oil", action: "putting the oil in a pan and put the pan on the cook" },
  { description: "waiting", action: "waiting 10 mins till the oil be 170`" },
  { description: "frying", action: "puting Skalob in the oil" },
  { description: "waiting", action: "waiting 10 mins till the chicken reay" }
  ]

  print_divider
  puts "See below the different steps to follow:"

  steps.each_with_index do |step, index|
    puts (index + 1).to_s + ") " + step[:description]
  end

  def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
  answer = gets.chomp

  answer.upcase == 'Y'
end
steps.each_with_index do |step, index|
  print_divider

  loop do
    ready = ask_if_ready(step, index)
    break if ready

    puts "OK, I will give you some extra time."
    print_progress_bar
  end

  send(step[:action])
end
print_divider
puts "Listo! Enjoy your meal!"
