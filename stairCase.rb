#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
    # Write your code here
    for i in 1..n
        for j in 1..n-i
            print " "
        end
        for k in n.downto(n-i+1)
            print "#"
        end
        puts "\n"
    end

end

n = gets.strip.to_i

staircase n