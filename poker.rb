require 'rubycards'
include RubyCards

start = true

while start == true do
  command = gets.to_s.downcase.delete!("\n")

  hand = Hand.new
  deck = Deck.new
  deck.shuffle!

  if command == "hole"
    hand.draw(deck, 2)
    puts hand
  elsif command == "flop"
    hand.draw(deck, 3)
    puts hand
  elsif command == "turn"
    hand.draw(deck, 4)
    puts hand
  elsif command == "river"
    hand.draw(deck, 5)
    puts hand
  else
    start = false
  end
end
