//
//  main.swift
//  AddTwoNumbers
//
//  Created by simpletour on 28/06/2017.
//  Copyright © 2017 YL. All rights reserved.
//

import Foundation

//topic
/*
 
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 
 [2,4,3]
 [5,6,4]
 
 
 [7,0,8]
 */


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let node:ListNode = ListNode(0);
        var lNum:Int = 0;
        var rNum:Int = 0;
        var hl:ListNode? = l1;
        var hr:ListNode? = l2;
        
        while (hl != nil) {
            lNum += (hl?.val ?? 0);
            lNum *= 10;
            hl = hl?.next;
        }
        lNum /= 10;
        
        while (hr != nil) {
            rNum += (hr?.val ?? 0);
            rNum *= 10;
            hr = hr?.next;
        }
        rNum /= 10;
        
        let value:Int = lNum + rNum;
       
        var v:Int = value;
        
        var tn:ListNode = node;
        while (v != 0) {
            tn.val = v % 10;
            v /= 10;
            
            if(v != 0) {
                tn.next = ListNode(0);
                tn = tn.next!;
            }
        }
        return node;
    }
}

let solution:Solution = Solution();
//let l1:ListNode = ListNode(2);
//l1.next = ListNode(4);
//l1.next?.next = ListNode(3);
//
//let l2:ListNode = ListNode(5);
//l2.next = ListNode(6);
//l2.next?.next = ListNode(4);

let l1:ListNode = ListNode(1);
//l1.next = ListNode(8);
let l2:ListNode = ListNode(9);
l2.next = ListNode(9);

var node:ListNode? = solution.addTwoNumbers(l1, l2);

while (node != nil) {
    print("valeu = \(node!.val)");
    node = node?.next;
}
