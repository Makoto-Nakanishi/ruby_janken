
puts "じゃんけんをしましょう。ジャンケン・・・・"

def janken
  puts "0（グー）1（チョキ）2（パー）3(戦わない）"

  begin
   input_hand = gets.chomp
   input_hand_n = Integer(input_hand)
  rescue
    puts "エラー！正しい数字を入力してください"
    return false
  end

  if input_hand_n == 3  
    return false  
  end
  
  puts "ホイ！"
  
  jankens = ["グー","チョキ","パー"]
  
  program_hand = jankens.sample
  player_hand = jankens[input_hand_n]
  
  puts "あなたの手:#{player_hand}"
  puts "相手の手:#{program_hand}"
  
  if player_hand == nil
    puts "エラー！正しい数字を入力してください"
    return false

  elsif player_hand == program_hand
    puts "あいこで"
    return true

  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    puts "あっち向いて〜"
    puts "0（上）1（下）2（左）3(右）"

    achimuite = ["上","下","左","右"]

  begin
    input_dir = gets.chomp
    input_dir_n = Integer(input_dir)
  rescue
    puts "エラー！正しい数字を入力してください"
    return false
  end

    puts "ホイ！"
    
    program_hand2 = achimuite.sample
    player_hand2 = achimuite[input_dir_n]
    
    puts "あなたの手：#{player_hand2}"
    puts "相手の手：#{program_hand2}"
    
    if player_hand2 == program_hand2
        puts "あなたの勝ちです"
        return false
    elsif player_hand2 == nil
        puts "エラー！正しい数字を入力してください"
        return false
    else
        puts "もう一回" 
        return true
    end

  else
    puts "あなたの負けです"
    puts "あっち向いて〜"
    puts "0（上）1（下）2（左）3(右）"

    achimuite = ["上","下","左","右"]
    
  begin
    input_dir = gets.chomp
    input_dir_n = Integer(input_dir)
  rescue
    puts "エラー！正しい数字を入力してください"
    return false
  end
    
    puts "ホイ！"
    
    program_hand2 = achimuite.sample
    player_hand2 = achimuite[input_dir_n]
    
    puts "あなたの手：#{player_hand2}"
    puts "相手の手：#{program_hand2}"
    
    if player_hand2 == program_hand2
        puts "あなたの負けです"
        return false
    elsif player_hand2 == nil
        puts "エラー！正しい数字を入力してください"
        return false
    else
        puts "もう一回" 
        return true
    end
  end
end

next_game = true

while next_game do
  next_game = janken
end







