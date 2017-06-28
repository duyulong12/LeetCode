//
//  main.swift
//  Two Sum
//
//  Created by simpletour on 28/06/2017.
//  Copyright © 2017 YL. All rights reserved.
//

import Foundation

//topic
/*
    
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 */


class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0 ..< (nums.count - 1) {
            for j in 1 ..< nums.count {
                let sum:Int = nums[i] + nums[j];
                if (sum == target && i != j) {
                    return i > j ? [j, i] : [i, j];
                }
            }
        }
        return [];
    }
}

let solution:Solution = Solution();
let nums = [2, 7, 11, 15];
let target = 22;
let result:[Int] = solution.twoSum(nums, target);

print("result = \(result)");
