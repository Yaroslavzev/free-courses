=begin
def formatted_duration(x,y)
  hours = (x+y) / (60 * 60)
  minutes = ((x+y) / 60) % 60
  seconds = (x+y) % 60

  succ_h = lambda { |n|
        n % 10 == 1 && n % 100 != 11 ?
        :час : [2, 3, 4].include?(n % 10) && ![12, 13, 14].include?(n % 100) ?
        :часа : n % 10 == 0 || [5, 6, 7, 8, 9].include?(n % 10) || [11, 12, 13, 14].include?(n % 100) ?
        :часов : :other}

  succ_m = lambda { |n|
        n % 10 == 1 && n % 100 != 11 ?
        :минута : [2, 3, 4].include?(n % 10) && ![12, 13, 14].include?(n % 100) ?
        :минуты : n % 10 == 0 || [5, 6, 7, 8, 9].include?(n % 10) || [11, 12, 13, 14].include?(n % 100) ?
        :минут : :other}

  succ_s = lambda { |n|
        n % 10 == 1 && n % 100 != 11 ?
        :секунда : [2, 3, 4].include?(n % 10) && ![12, 13, 14].include?(n % 100) ?
        :секунды : n % 10 == 0 || [5, 6, 7, 8, 9].include?(n % 10) || [11, 12, 13, 14].include?(n % 100) ?
        :секунд : :other}
  succ_h1 = succ_h.call(hours)
  succ_m1 = succ_m.call(minutes)
  succ_s1 = succ_s.call(seconds)

  return ["#{ hours } #{succ_h1}", "#{ minutes } #{succ_m1}", "#{ seconds } #{succ_s1}"].select { |str| str =~ /[1-9]/ }.join(' ')
end

puts formatted_duration(ARGV[0].to_i,ARGV[0].to_i)
=end
