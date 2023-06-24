#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    len = arr.length
    primary_sum = 0
    (0...len).each do |i|
        primary_sum += arr[i][i]
    end 

    secondary_sum = 0
    (0...len).each do |i|
        secondary_sum += arr[i][len-1-i]
    end 
    difference = primary_sum - secondary_sum
    return difference.abs
    
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
