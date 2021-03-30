# CSVファイルを読み込む
require "csv"
CSV.foreach("sales.csv", headers:true) do |csv|

# 年齢の計算
  # 日付をこれから使用する
  require "date"
  # 今日の日付を定義
  Today = p Date.today
  # CSVファイルに記載の誕生日の文字列を日付に変換
  Birthday = p Date.parse(csv['誕生日'].to_i)
  # 計算
  Age = Today.year - Birthday.year

# 合計金額の計算
  Total = csv['単価'].to_i * csv['数量'].to_i

# 表示
  puts "名前は #{csv['名前']} ( #{Age} 歳) を #{csv['買い上げ品目']} を #{Total} 円お買い上げ。"

end