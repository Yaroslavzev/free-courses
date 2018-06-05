class User
  def initialize(year,month,day)
    aa = "января февраля марта апреля мая июня июля августа сентября октября ноября декабря".scan(/[а-яА-ЯЁё]{3,}/)
    @year = year.to_s
    @month = (aa.index(month) + 1).to_s
    @day = day.to_s
  end

  def days
    a = Time.local(@year,@month,@day,0,0,0)
    year1 = @year.to_i + 1
    b = Time.local(year1,1,1,0,0,0)
    c = (b - a)
    d = (c/86400).to_i
    return d
  end
end

newdata = User.new(ARGV[2].to_s,ARGV[1].to_s,ARGV[0].to_s)
puts newdata.days
