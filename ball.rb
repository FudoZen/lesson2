require 'yaml'
require_relative 'cmd_colors'

class Ball
  ANSWERS = YAML.load_file('answers.yml')

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
    puts answer.send(color_name) if answer.respond_to?(color_name)
    answer
  end
end
