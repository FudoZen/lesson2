require_relative 'colored_string'

class Ball
  ANSWERS = [
    'Don’t count on it',
    'My reply is no',
    'My sources say no',
    'Outlook not so good',
    'Very doubtful',

    'As I see it, yes',
    'Most likely',
    'Outlook good',
    'Signs point to yes',
    'Yes',

    'Reply hazy, try again',
    'Ask again later',
    'Better not tell you now',
    'Cannot predict now',
    'Concentrate and ask again',

    'It is certain',
    'It is decidedly so',
    'Without a doubt',
    'Yes — definitely',
    'You may rely on it'
  ]

  def answer_color(answer_index)
    if answer_index.between?(0, 4)
      'red'
    elsif answer_index.between?(5, 9)
      'green'
    elsif answer_index.between?(10, 14)
      'orange'
    else
      'blue'
    end
  end

  def shake
    answer_index = rand(0..(ANSWERS.size - 1))
    color_name = answer_color(answer_index)
    answer = ANSWERS[answer_index]
    puts answer.send('red') if answer.respond_to?('red')
    answer
  end
end

a = Ball.new
a.shake