def janken
  hand = [ "0:グー", "1:チョキ", "2:パー"]
  
  puts "じゃんけんしましょう"
  puts "0~2を入力してください"
  puts "0:グー、1:チョキ、2:パー"
  
  player_hand=gets.chomp

# 0~2のときのみ有効、それ以外は再度入力させる
  if player_hand == "0" || 
     player_hand == "1" || 
     player_hand == "2"
    
     player_hand=player_hand.to_i
     random_hand = rand(3)
    
     puts "プレイヤーは #{hand[player_hand]} を出しました"
     puts "相手は #{hand[random_hand]} を出しました"
    
     if player_hand == random_hand
       puts "あいこです"
       puts "もう一回じゃんけんしましょう"
       janken
     elsif (player_hand ==0 && random_hand ==1 ) ||
           (player_hand ==1 && random_hand ==2)  ||
           (player_hand ==2 && random_hand ==0)
           puts "じゃんけんはあなたの勝ちです"
           result ="win"
     else
       puts "じゃんけんはあなたの負けです"
       result = "lose"
     end
  else
    puts "無効な入力です"
    puts "もう一度入力してください"
    result = "none"
  end

end

def atti_hoi(result)
  direction = [ "0:上", "1:右", "2:下", "3:左"]
  
  puts "あっちむいて．．．ほい！"
  puts "0:上,1:右,2:下,3:左"
  
  player_direction=gets.chomp
  
  if player_direction == "0" || 
     player_direction == "1" || 
     player_direction == "2" ||
     player_direction == "3" 

     player_direction = player_direction.to_i
     random_direction = rand(4)
  
     puts "プレイヤーは #{direction[player_direction]} です"
     puts "相手は #{direction[random_direction]} です"
    
    
     if player_direction == random_direction
     # 　result=じゃんけんの勝敗
       if result == "win"
         puts "あなたの勝ちです。"
         final_result = "win"
       elsif result =="lose"
         puts "あなたの負けです。"
         final_result = "lose"
       end
    
     else
       puts "勝負は決まりませんでした。"
       puts "もう一度じゃんけんしましょう。。"
    
     　final_result = "none"
     end
  else
    puts "無効な入力です"
    puts "もう一度じゃんけんからやり直してください"
    final_result = "none"
  end
end

# じゃんけんをresultで判定、あっちむいてほいをfinal_resultで判定

final_result ="none"
result = "none"

while final_result == "none" do

  while result == "none" do
    result = janken
  end

final_result = atti_hoi(result)

# 勝敗が決まらなければじゃんけんから繰り返し、勝敗が決まっていれば終了
result = "none"
end

puts "あっちむいてほいは終了です。お疲れさまでした。"
