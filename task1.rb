class User

  def initialize(phrase)
    @phrase = phrase
  end

  def palindrome
    if @phrase.downcase.scan(/\w/).eql?(@phrase.downcase.scan(/\w/).reverse)
      return 'YES'
    else
      return 'NO'
    end
  end
end

newdata = User.new(ARGV[0].to_s)
puts newdata.palindrome
