class Commands_Pet
  def play
    nowtime
    @play += 20
    @sleep -= 2
  end

  def heal
    nowtime
    @health += 10
    @play -= 2
  end

  def eat
    nowtime
    @hungry += 15
  end

  def watch
    nowtime
  end

  def sport
    nowtime
    @height += 2
    @sleep -= 1
  end

  def walk
    nowtime
    @health += 5
    @play += 2
    @sleep -= 1
  end

  def swim
    nowtime
    @health += 2
    @play += 5
    @hungry -= 2
  end
end

class Pet < Commands_Pet
  def start
    print 'Введите имя: ', @name = gets
    print 'Введите вид: ', @kind = gets
    @time = 1
    @health = 100
    @hungry = 100
    @play = 100
    @sleep = 100
    @height = 50
    @stugy = 10
  end

  def help
    puts 'Чтобы начать игру используйте метод start'
    puts 'Изначально у вашего питомца: '
    puts '100 здоровья'
    puts '100 сытости'
    puts '100 настроения'
    puts '100 усталости'
    puts 'рост 50'
    puts 'Образование 10'
    comands
  end

  def comands
    puts 'Комманды:'
    puts 'play(+20 настроения -2 усталости)'
    puts 'heal(+10 здоровья -2 настроения)'
    puts 'eat(+10 сытости)'
    puts 'sport(+2 рост -2 усталости)'
    puts 'walk(+5 здоровья +2 настроения -1 усталости)'
    puts 'swim(+2 здоровья +5 настроения -2 сытости)'
    puts 'watch(проходит 1 день)'
    print '1 день (-3 усталости -3 здоровья -3 сытости '
    puts '-3 настроения -1 образования +1 рост)'
  end

  def stats
    puts "День #{@time}"
    puts "Имя #{@name}"
    puts "Вид #{@kind}"
    puts "Здоровье #{@health}"
    puts "Сытость #{@hungry}"
    puts "Настроение #{@play}"
    puts "Усталость #{@sleep}"
    puts "Образование #{@stugy}"
    puts "Рост #{@height}"
  end

  private

  def nowtime
    @time += 1
    @sleep -= 3
    @health -= 3
    @hungry -= 3
    @play -= 3
    @stugy -= 1
    @height += 1
    chekrun
    chekmax
  end

  def chekrun
    if @sleep < 1
      puts 'Ваш питомец слишком устал и сбежал от вас', start
    elsif @health < 1
      puts 'Ваш питомец заболел и сбежал от вас', start
    elsif @hungry < 1
      puts 'Ваш питомец проголодался и сбежал от вас', start
    elsif @play < 1
      puts 'Вашему питомцу стало скушно и он сбежал от вас', start
    end
  end

  def chekmax
    @sleep = 120 if @sleep > 120
    @health = 120 if @health > 120
    @hungry = 120 if @hungry > 120
    @play = 120 if @play > 120
    @height = 100 if @height > 100
  end
end

a = Pet.new
a.help
