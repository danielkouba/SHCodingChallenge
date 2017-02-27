//: Playground - noun: a place where people can play

import UIKit



func isAnagram(str1: String, str2: String) -> Bool {
    
    ////////////////////////////////////////////
    // Split string into array of lowercase characters
    // Remove spaces
    var str1Arr = Array(str1.lowercased().characters);
    str1Arr = str1Arr.filter { $0 != " " };
    var str2Arr = Array(str2.lowercased().characters);
    str2Arr = str2Arr.filter { $0 != " " };
    
    
    ////////////////////////////////////////
    // If the lengths of the array are not equal we can exit early
    if str1Arr.count == str2Arr.count {
        for idx in 0...str1Arr.count-1{
            // Find each character from array one in array two
            if let removeIdx = str2Arr.index(of: str1Arr[idx]) {
                // Remove the found character
                str2Arr.remove(at: removeIdx);
            }
        }
        // If array two is empty, they are anagrams
        if str2Arr.count == 0 {
            return true
        }
        
    }
    
    ////////////////////////////////////////
    // Not an anagram
    return false
}

isAnagram(str1: "Hello World", str2: "Hi")
isAnagram(str1: "Hello World", str2: "Hello World")
isAnagram(str1: "Clint Eastwood", str2: "Old West Action")

