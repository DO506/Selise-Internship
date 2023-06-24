require 'json'
require 'stringio'


def compareTriplets(a, b)
    
    arr = Array.new(2, 0)
    if a[0] > b[0]
        arr[0] += 1 
    elsif a[0] < b[0]
        arr[1] += 1
    end
    if a[1] > b[1]
        arr[0] += 1 
    elsif a[1] < b[1]
        arr[1] += 1
    end
    if a[2] > b[2]
        arr[0] += 1 
    elsif a[2] < b[2]
        arr[1] += 1
    end
    return arr
    
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()