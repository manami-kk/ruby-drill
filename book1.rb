def new_book(books)
  book = {}
  puts "タイトルを入力してください："
  book[:title] = gets.chomp
  puts "著者を入力してください："
  book[:author] = gets.chomp

  books << book
  puts "本を保存しました"
  return books
end

def search_book(books)
  puts "キーワードを入力してください："
  keyword = gets.chomp
  result_array = books.select { |book| book[:title].include?(keyword) || book[:author].include?(keyword) }
  if result_array.empty?
    puts "見つかりませんでした"
  else
    show_results(result_array)
  end
end

def show_results(result_array)
  puts "#{result_array.count}冊の本が見つかりました"
  puts "-------------------------------"
  result_array.each do |result|
    puts "タイトル: #{result[:title]}"
    puts "著者: #{result[:author]}"
    puts "-------------------------------"
  end
end

books = []

while true do
  puts "メニューを選択してください:"
  puts "1:本の登録を行う"
  puts "2:検索する"
  puts "3:終了"
  input = gets.to_i

  case input
  when 1
    new_book(books)
  when 2
    search_book(books)
  when 3
    exit
  end
end
