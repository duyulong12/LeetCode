//
//  main.swift
//  ZigZagConversion
//
//  Created by simpletour on 03/07/2017.
//  Copyright © 2017 YL. All rights reserved.
//

import Foundation

//topic
/*
 
 The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)
 
 P   A   H   N
 A P L S I I G
 Y   I   R
 And then read line by line: "PAHNAPLSIIGYIR"
 Write the code that will take a string and make this conversion given a number of rows:
 
 string convert(string text, int nRows);
 convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".
 
 */


class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        let count:Int = s.characters.count;
        var i:Int = 0;
        var strs:[String] = ["","",""];
        let chars:[Character] = Array.init(s.characters);
        while (i < count) {
            for j in 0..<numRows {
                if (i >= count) { break; }
                strs[j].append(chars[i]);
                i += 1;
            }
            
            var k:Int = numRows - 2;
            while (k >= 1 && i < count) {
                strs[k].append(chars[i]);
                i += 1;
                k -= 1;
            }
        }
        
        var str:String = "";
        for st in strs {
            str.append(st);
        }
        return str;
    }
}

let solution:Solution = Solution();
//let str:String = "PAYPALISHIRING";
let str:String = "ABCD";

let result:String = solution.convert(str, 3);

print("result = \(result)");
