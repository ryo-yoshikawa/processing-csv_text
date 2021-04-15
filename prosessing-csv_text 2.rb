require "csv"
require "date"
require "happybirthday"

class Prosessing
  def set_name(name)
    @name = name
  end

  def set_bornday(bornday)
    date = Date.parse(bornday)
    birthday = Happybirthday.born_on(date)
    @age = birthday.age.years_old
  end

  def set_item(item)
    @item = item
  end

  def set_price(price)
  end

  def set_quantity(quantity)
  end

  def calculation
    @total = price * quantity

  def say
    puts "名前は #{@name} ( #{@age} 歳) を #{@item} を #{@total} 円お買い上げ。"
  end

end

CSV.foreach("sales.csv", headers:true) do |csv|

x = Prosessing.new
x.set_name({csv['名前']})
x.set_bornday(csv['誕生日'])
x.set_item(csv['買い上げ品目'])
x.set_price(csv['単価'])
x.set_quantity(csv['数量'])
x.calculation
x.say