class Chimpanzee
	
	attr_accessor :bananas, :is_clean

	def initialize
		@bananas = 0
    @is_clean = true
	end

	def how_many_bananas?
		@bananas
	end

	def yell
		puts "Ooh ooh ooh"
	end

	def eat
		puts "Yumm"
    puts "Relieved..."
		@is_clean = false
    @bananas += 1
	end

  def groom
    if @is_clean
      "Nothing to do"
    else
      puts "Taking a shower."
      @is_clean = true
    end
  end

end