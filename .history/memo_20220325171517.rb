  require "csv" 
  
  puts "1(新規でメモを作成) 2(既存のメモ編集する)"
  
  memo_type = gets.chomp

  if memo_type == "1" 
    puts "拡張子を除いたファイルを入力してください"    
  elsif memo_type == "2"
    puts "拡張子を除いた既存ファイルを入力してください"
  end 

  file_name = gets.chomp

  if memo_type == "1"
 CSV.open(file_name + '.csv',"w")do |csv|
  end
  ##引数のwで新規作成(上書き)になる　aなら末尾に追加される
  ##memo_type + '.csv' で変数に文字列を連結させる
  elsif memo_type == "2"
 CSV.open(file_name + '.csv',"a")do |csv|
  end
end

puts "メモしたい内容を入力してください"
puts "完了したらCtrl + D を押します"


while 

end
file_text = gets.to_s
text_dates = []

if memo_type == "1"

 CSV.open(file_name + '.csv','w')do |csv|
 csv << [text_dates]
 puts "作成しました"



 end


elsif memo_type == "2"
 CSV.open(file_name + '.csv','a+')do |csv|
 csv << [file_text]
 puts "追加しました"
 end

end