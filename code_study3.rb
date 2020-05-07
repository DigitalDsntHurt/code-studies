
WEEKS_IN_YEAR = 52
age = 0

until age > 100 do
  life_weeks = age * WEEKS_IN_YEAR
  percent = 1.0/life_weeks.to_f*100.0
  puts "1 week is #{percent.round(4)}% of a #{age}-year-old's life"
  age +=1
end