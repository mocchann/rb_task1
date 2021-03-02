require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1 then 
  
  puts "拡張子を除いたファイル名を入力してください"
  
  file_title = gets.to_s
  file_name = CSV.open("#{file_title}.csv","w")
  
  puts "メモしたい内容を入力してください"
  puts "完了したらctrl+Dを押してください" 
  
  memo = gets.to_s
  CSV.open("#{file_title}.csv","a") do |csv|
  csv << [memo]
  end

elsif memo_type == 2 then 
  
  puts "拡張子を除いたファイル名を入力してください"
  
  file_title = gets.to_s
  file_name = CSV.open("#{file_title}.csv","a")
  
  puts "メモしたい内容を入力してください"
  puts "完了したらctrl+Dを押してください" 
  
  memo = gets.to_s
  CSV.open("#{file_title}.csv","a") do |csv|
  csv << [memo]
  end
  
else
  puts "error continue"
end