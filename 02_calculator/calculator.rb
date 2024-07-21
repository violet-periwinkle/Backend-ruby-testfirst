#write your code here
def add(a, b)
    a + b
end
def subtract(a, b)
    a - b
end
def sum(array)
    result = 0
    array.each { |addend| result += addend }
    result
end