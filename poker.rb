require 'rubycards'
include RubyCards

start = true
flop = false

deck = Deck.new

while start == true do
  command = gets.to_s.downcase.delete!("\n")
  deck.shuffle!


  if command == "hole"
    deck.shuffle!
    hand = Hand.new
    hand.draw(deck, 2)
    puts hand
  elsif command == "flop"
    deck.shuffle!
    @flop = Hand.new
    @flop.draw(deck, 3)
    puts @flop
    flop = true
  elsif command == "turn" && flop == false
    turn = Hand.new
    hand.draw(deck, 4)
    puts hand
  elsif command == "turn" && flop == true
    @turn = Hand.new
    @turn.draw(deck, 1)
    puts @flop
    puts @turn
    puts deck.count
  elsif command == "river" && flop == false
    river = Hand.new
    hand.draw(deck, 5)
    puts hand
  elsif command == "river" && flop == true
    @river = Hand.new
    @river.draw(deck, 1)
    puts @flop
    puts @turn
    puts @river
  elsif command == "exit"
    start = false
  elsif command == "reset"
    flop = false
    deck.shuffle!
  end
end
