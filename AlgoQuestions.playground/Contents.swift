import UIKit

// Fibonacci Generator


func generateFibonacciSequence(length: Int) -> [Int]{

    func fib(limit: Int) -> Int{
        if limit == 1 || limit == 0 {
            return limit
        }
        
        return fib(limit: limit-1) + fib(limit: limit-2)
    }
    var sequence = [Int]()
    for i in 0 ..< length {
        sequence.append(fib(limit: i))
    }
    return sequence
}

print(generateFibonacciSequence(length: 10))


// Prime Number Test

func isPrime(number: Int) -> Bool {
    if number < 2 {
        return false
    } else if number == 2 || number == 3 {
        return true
    }
    for i in 2 ... Int(sqrt(Double(number))) {
        if number % i == 0 {
            return false
        }
    }
    return true
}

isPrime(number: 17)

// Factorial Function


func factorial(of number: Int) -> Int? {
    if number < 0 {
        return nil
    } else if number == 0 {
        return 1
    }
    
    if let previousNumber = factorial(of: number - 1){
        return number * previousNumber
    } else {
        return nil
    }
}
factorial(of: 10)
