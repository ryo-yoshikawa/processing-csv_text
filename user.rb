class User
  require "happybirthday"

  def initialize(name, date, item , quantity, price)
    @name = name
    @date = date
    @item = item
    @quantity = quantity
    @price = price
  end

  def birthday
    birthday = Happybirthday.born_on(@date)
    @age = birthday.age.years_old
  end
  
  def total
    @total = @quantity * @price
  end

  def say
    puts "名前は #{@name} (#{@age} 歳) を #{@item} を #{@total} 円お買い上げ。"
  end
end

user = User.new('谷口 鉄洋','1978/2/26','ロールケーキ',3,300)
user.birthday
user.total
user.say

user = User.new('安永 あさみ','1959/6/8','ショートケーキ',2,250)
user.birthday
user.total
user.say

# CSV.foreach("sales.csv", headers:true) do |csv|
#   user = User.new(csv)
#   user.output
# end