print "Enter day:"
day = gets.to_i
print "Enter month:"
month = gets.to_i
print "Enter year:"
year = gets.to_i

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
  months[1] = 29
end
num = months.take(month - 1).sum + day
puts "Serial number:#{num}"
