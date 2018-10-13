class Book
  @@books = []

  def initialize(title, author)
    @title = title
    @author = author
  end

  def title
    return @title
  end

  def author
    return @author
  end

  def self.register
    puts "タイトルを入力してください："
    title = gets.chomp
    puts "著者を入力してください："
    author = gets.chomp

    book = Book.new(title, author)
    @@books << book
    puts "本を保存しました"
  end

  def self.search
    puts "キーワードを入力してください："
    keyword = gets.chomp
    result_array = @@books.select { |book| book.title.include?(keyword) || book.author.include?(keyword) }
    if result_array.empty?
      puts "見つかりませんでした"
    else
      puts "#{result_array.count}冊の本が見つかりました"
      puts "-------------------------------"
      result_array.each do |result|
        puts "タイトル: #{result.title}"
        puts "著者: #{result.author}"
        puts "-------------------------------"
      end
    end
  end
end

while true do
  puts "メニューを選択してください:"
  puts "1:本の登録を行う"
  puts "2:検索する"
  puts "3:終了"
  input = gets.to_i

  case input
  when 1
    Book.register
  when 2
    Book.search
  when 3
    exit
  end
end
