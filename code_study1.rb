num = 0


loop do
  num += 13
  center = num.to_s[1..-2]

  if center.include?("17")
    puts "17 got a hug!"
    puts "#{num}"
    break
  end
end