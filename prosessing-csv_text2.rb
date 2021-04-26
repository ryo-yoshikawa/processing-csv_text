class User
  require "csv" #csvを読み込む
  require "happybirthday" #happybirthdayというgemを読み込む

  def initialize(row) #initializeというメソッドを使用し、csvの内容をを引数に指定する
    @name = row[0] #0列目を@nameというインスタンス変数に代入する
    @date = row[1] #1列目を@dateというインスタンス変数に代入する
    @item = row[2] #2列目を@itemというインスタンス変数に代入する
    @quantity = row[3] #3列目を@quantityというインスタンス変数に代入する
    @price = row[4] #4列目を@priceというインスタンス変数に代入する
  end

  def say #sayというメソッドの設計図
    puts "名前は #{@name} (#{age} 歳) #{@item} を #{total} 円お買い上げ。"
  end

  private
    def age #ageというメソッドの設計図
      birthday = Happybirthday.born_on(@date) #happybirthdayというgemで年齢を計算し、答えは@ageというインスタンス変数に代入する
      birthday.age.years_old
    end
    
    def total #totalというメソッドの設計図
      @quantity.to_i * @price.to_i
    end
end

CSV.foreach("sales.csv", headers:true) do |row| #"sales.csv"というcsvファイルを読み込み、一行目はヘッダーとする
  user = User.new(row) #userというインスタンスにcsvファイルを代入する
  user.say #sayというメソッドにuserというインスタンスを代入する
end
