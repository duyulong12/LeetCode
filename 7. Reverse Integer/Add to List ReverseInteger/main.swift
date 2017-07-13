//
//  main.swift
//  Add to List ReverseInteger
//
//  Created by simpletour on 07/07/2017.
//  Copyright © 2017 YL. All rights reserved.
//

import Foundation


class Solution {
    func reverse(_ x: Int) -> Int {
        var t:Int = 0;
        var tx:Int = x;
        while (tx != 0) {
            t = t * 10 + tx % 10;
            tx /= 10;
            if (t > Int(Int32.max) || t < Int(Int32.min)) { return 0; }
        }
        return t;
    }
}

let solution = Solution();
let x:Int = 32768;

print("x = \(x)");

let result:Int = solution.reverse(x);

print("result = \(result)");
