class Router
  
  def initialize
    @controller = Controller.new
    @continue = true
  end

  def show_menu
    puts "Que voulez vous faire ?"
    puts "1. Créer un gossip"
    puts "2. Afficher tous les potins"
    puts "3. Effacer un potin"
    puts "4. Terminer le programme"
    @params = gets.chomp.to_i
    puts
  end

  def menu_choice
    case @params
    when 1
      puts "Tu as choisi de créer un gossip"
      @controller.create_gossip
    when 2
      puts "Tu as choisi d'afficher tous les potins"
      @controller.index_gossips
    when 3
      puts "Tu as choisi d'effacer un potin"
      @controller.destroy_gossip
    when 4
      puts "A bientôt"
      @continue = false
    else 
      "Ce choix n'existe pas, merci de ressayer"
    end
  end

  def perform
    while @continue
      show_menu
      menu_choice
    end
  end
end
