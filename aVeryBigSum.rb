require 'json'
require 'stringio'

def aVeryBigSum(ar)
    # Write your code here
    sum=0
    ar.each do|i|
        sum = i+sum
    end
    return sum
        

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = aVeryBigSum ar

fptr.write result
fptr.write "\n"

fptr.close()
