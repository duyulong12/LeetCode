//
//  main.swift
//  LongestPalindromicSubstring
//
//  Created by simpletour on 30/06/2017.
//  Copyright © 2017 YL. All rights reserved.
//

import Foundation

//topic
/*
 
 Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.
 
 Example:
 
 Input: "babad"
 
 Output: "bab"
 
 Note: "aba" is also a valid answer.
 Example:
 
 Input: "cbbd"
 
 Output: "bb"
 
 */


class Solution {
    func longestPalindrome(_ s: String) -> String {
        let count:Int = s.characters.count;
        if (count == 0) { return ""; }
        if (count == 1) { return s; }
        var start:Int = 0;
        var length:Int = 1;
        var i:Int = 0;
        var chars:[Character] = [Character]();
        for c in s.characters {
            chars.append(c);
        }
        
        for c in chars {
            var j:Int = i;
            var k:Int = i;
            if (count - i <= length / 2) { break; }
            while (k < count - 1 && c == chars[k+1]) {
                k += 1;
            }
            i = k + 1;
            while (k < count - 1 && j > 0 && chars[k+1] == chars[j-1]) {
                k += 1;
                j -= 1;
            }
            
            let len = k - j + 1;
            if (len > length) {
//                print("len = \(len)   length = \(length)");
                start = j;
                length = len;
            }
            
        }
        let st:String.Index = s.index(s.startIndex, offsetBy: start);
        let end:String.Index = s.index(s.startIndex, offsetBy: start + length);
        
        return s.substring(with: Range(st..<end));
    }
}

let solution:Solution = Solution();
let str1:String = "babad";
let str2:String = "cbbd";
let str3:String = "abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababa"
let str4:String = "aaabaaaa";

print("result1 = \(solution.longestPalindrome(str1))");
print("result2 = \(solution.longestPalindrome(str2))");
print("result3 = \(solution.longestPalindrome(str3))");
print("result4 = \(solution.longestPalindrome(str4))");


