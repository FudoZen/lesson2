class String

	def red
		"\e[31m#{self}\e[0m"
	end

	def blue
		"\e[34m#{self}\e[0m"
	end

	def orange
		"\e[31m#{self}\e[0m"
	end

	def green
		"\e[32m#{self}\e[0m"
	end

end


class Ball


	def shake
	b = ['Don’t count on it',
	'My reply is no',
	'My sources say no',
	'Outlook not so good',
	'Very doubtful']

	g = ['As I see it, yes',
	'Most likely',
	'Outlook good',
	'Signs point to yes',
	"'Yes'"]

	o = ['Reply hazy, try again',
	'Ask again later',
	'Better not tell you now',
	'Cannot predict now',
	'Concentrate and ask again']

	r = ['It is certain',
	'It is decidedly so',
	'Without a doubt',
	'Yes — definitely',
	'You may rely on it']
=begin
	random = rand(4)
	colorrandom = rand(3)

	if  colorrandom == 0
		p b.slice(random).blue
		b.slice(random).to_s

	elsif colorrandom == 2
		p g.slice(random).green
		g.slice(random).to_s

	elsif colorrandom == 3
		p o.slice(random).yellow
		o.slice(random).to_s

	elsif colorrandom == 4
		p r.slice(random).red
		r.slice(random).to_s
	end

	p blue.slice(random).blue
=end
	a = "smth"
	p r.slice(1).send('red')
	end

end

a = Ball.new
a.shake