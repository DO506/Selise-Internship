#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
  if s[8, 2] == "AM"
    if s[0, 2] == "12"
      s[0, 2] = "00"
    end
    s[8, 2] = ""
  else
    unless s[0, 2] == "12"
      t = s[0, 2].to_i
      s[0, 2] = (t + 12).to_s
    end
    s[8, 2] = ""
  end
  return s
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion(s)

fptr.write result
fptr.write "\n"

fptr.close()
