# 読み込むもの
  require "csv"
  require "date"
  require "happybirthday"
# CSVファイルを読み込む
CSV.foreach("sales.csv", headers:true) do |csv|

# 年齢の計算
  # CSVファイルに記載の誕生日の文字列を日付に変換
  date = Date.parse(csv['誕生日'])
  # 計算
  birthday = Happybirthday.born_on(date)
  age = birthday.age.years_old

# 合計金額の計算
  total = csv['単価'].to_i * csv['数量'].to_i

# 表示
  puts "名前は #{csv['名前']} ( #{age} 歳) を #{csv['買い上げ品目']} を #{total} 円お買い上げ。"

end