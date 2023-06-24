#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
  max_height = candles.max
  count = candles.count(max_height)
  return count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

candles_count = gets.strip.to_i

candles = gets.rstrip.split.map(&:to_i)

result = birthdayCakeCandles(candles)

fptr.write result
fptr.write "\n"

fptr.close()
