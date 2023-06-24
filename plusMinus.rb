#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr and INTEGER n as parameters.
#

def plusMinus(arr, n)
    pos = 0
    neg = 0
    zero = 0
    arr.each do |a|
        if a > 0
            pos += 1
        elsif a < 0
            neg += 1
        else
            zero += 1
        end
    end
    if n > 0
        puts pos.fdiv(n)
        puts neg.fdiv(n)
        puts zero.fdiv(n)
    else
        puts 0
        puts 0
        puts 0
    end
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus(arr, n)
