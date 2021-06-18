class Player
  def hand
    puts "faites un choix"
    puts "0:pierre "
    puts "1:feuille "
    puts "2:ciseau "
    input_hand = gets.chomp.to_i
    tinput=["pierre", "feuille", "ciseau"]
    c=true
    while c==true
      if (input_hand == 0)
          puts "input_hand : #{tinput[0]}"
          c=false
      elsif (input_hand == 1)
          puts "input_hand : #{tinput[1]}"
          c=false
      elsif (input_hand == 2)
          puts "input_hand : #{tinput[2]}"
          c=false
      else
      puts "faites un nouveau choix"
      puts "0:pierre "
      puts "1:feuille "
      puts "2:ciseau "
      input_hand = gets.chomp.to_i
      c=true
      end
    end
    enemy_hand = rand(3)
    toto = ["pierre", "feuille", "ciseau"]
    puts "enemy_hand : #{toto[enemy_hand]}"
    if input_hand != enemy_hand
       if (input_hand == 0 && enemy_hand == 1 || input_hand == 1 && enemy_hand == 2 || input_hand == 2 && enemy_hand == 0 )
       puts "enemy_hand win"
       elsif (input_hand == 1 && enemy_hand == 0 || input_hand == 2 && enemy_hand == 1 || input_hand == 0 && enemy_hand == 2 )
       puts "player_hand win"
       end
    else
       puts "nobody win"
    end
  end
end
player = Player.new
player.hand
