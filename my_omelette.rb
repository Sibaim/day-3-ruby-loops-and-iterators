def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

@num_chicken_slides = 2
@num_cheez_slides = 2

ingredients = [
  { name: 'chicken', quantity: NUM_POTATOES },
  { name: 'cheez', quantity: NUM_EGGS },
  { name: 'oil', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
]
