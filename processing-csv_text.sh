# !/bin/bash (シェルスクリプトを書くって宣言)

# CSVファイルを読み込む
while read line #whileは繰り返す read lineはcsvファイルの1行を入力
# csvファイルのデータを配列
do
  array[0]=`echo ${line} | cut -d ',' -f 1` #echoは出力  #cut~はカンマごとに分けて読む
  array[1]=`echo ${line} | cut -d ',' -f 2`
  array[2]=`echo ${line} | cut -d ',' -f 3`
  array[3]=`echo ${line} | cut -d ',' -f 4`
  array[4]=`echo ${line} | cut -d ',' -f 5`
# 誕生日を計算
  #hoge1=`(-${array[1]})/1000`
# 合計金額を計算
  hoge2=${array[3]}*${array[4]}
# 表示
  echo "名前は${array[0]}(${hoge1}歳)${array[2]}を${hoge2}円お買い上げ。"
done < sales.csv
