
def loe(phrase)
  if phrase.downcase.scan(/\w/).eql?(phrase.downcase.scan(/\w/).reverse)
    puts 'YES'
  else
    puts 'NO'
  end
end
loe(ARGV[0].to_s)
