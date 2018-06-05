
aa = "января февраля марта апреля мая июня июля августа сентября октября ноября декабря".scan(/[а-яА-ЯЁё]{3,}/)

year = ARGV[2].to_s
month = aa.index(ARGV[1].to_s) + 1
day = ARGV[0].to_s

def days22 (x,y,z)
  a = Time.local(x,y,z,0,0,0)
  x1 = x.to_i + 1
  b = Time.local(x1,1,1,0,0,0)
  c = (b - a)
  d = (c/86400).to_i
  return d
end

puts days22(year,month,day)
