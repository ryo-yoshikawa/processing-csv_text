class User
  def set_name(name)
    @name = name
  end

  def set_age(age)
    @age = age
  end

  def say
    puts "私の名前は#{@name}です!#{@age}歳です！"
  end
end

user = User.new
user.set_name('りょう')
user.set_age(25)
user.say

x = User.new
x.set_name('かずひさ')
x.set_age(44)
x.say


