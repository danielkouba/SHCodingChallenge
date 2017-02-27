//: Playground - noun: a place where people can play

import UIKit

func rfib(num: Int) -> Int{
    if num == 1 || num == 2{
        return 1
    } else {
        return rfib(num: num - 2) + rfib(num: num - 1)
    }
}

print(rfib(num: 1));
print(rfib(num: 2));
print(rfib(num: 3));
print(rfib(num: 4));
print(rfib(num: 5));
print(rfib(num: 6));
print(rfib(num: 7));


func fib(num: Int) -> Int{
    var arr = [1,1];
    if num <= arr.count {
        return arr[num-1]
    } else {
        while arr.count < num {
            arr.append(arr[arr.count-2]  + arr[arr.count-1]);
        }
        return arr[num-1]
    }
    
}

print(fib(num: 1));
print(fib(num: 2));
print(fib(num: 3));
print(fib(num: 4));
print(fib(num: 5));
print(fib(num: 6));
print(fib(num: 7));