class View
  
  def create_gossip
    puts "De qui vient le potin ?"
    author = gets.chomp
    puts
    puts "Quel est le potin ?"
    content = gets.chomp.downcase
    {'author' => author, 'content' => content}
  end

  def index_gossips(gossips)
    gossips.each_with_index { |gossip, i| puts "Potin n°#{i} Selon #{gossip.author}, #{gossip.content}" }
  end

  def destroy_gossip
    puts "Quel potin veux-tu supprimer ? (donne son numéro)"
    correct_input = false
    until correct_input
      input = gets.chomp
      if input.match? /^\d+$/
        correct_input = true
      else
        puts "Je ne comprends pas... Entre le numéro du potin que tu veux supprimer."
      end
    end
    input.to_i
  end


end
