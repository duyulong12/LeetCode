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

/*
 ListNode c1 = l1;
 ListNode c2 = l2;
 ListNode sentinel = new ListNode(0);
 ListNode d = sentinel;
 int sum = 0;
 while (c1 != null || c2 != null) {
 sum /= 10;
 if (c1 != null) {
 sum += c1.val;
 c1 = c1.next;
 }
 if (c2 != null) {
 sum += c2.val;
 c2 = c2.next;
 }
 d.next = new ListNode(sum % 10);
 d = d.next;
 }
 if (sum / 10 == 1)
 d.next = new ListNode(1);
 return sentinel.next;
 
 */

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let node:ListNode = ListNode(0);
        var sum:Int = 0;
        var temp:ListNode = node;
        var hl:ListNode? = l1;
        var hr:ListNode? = l2;
        
        while (hl != nil || hr != nil) {
            sum /= 10;
            if (hl != nil) {
                sum += hl?.val ?? 0;
                hl = hl!.next;
            }
            
            
            if (hr != nil) {
                sum += hr?.val ?? 0;
                hr = hr!.next;
            }
            
            temp.next = ListNode(sum % 10);
            temp = temp.next!;
        }
        
        if (sum / 10 == 1) {
            temp.next = ListNode(1);
        }
        
        return node.next;
    }
}

let solution:Solution = Solution();
let l1:ListNode = ListNode(2);
l1.next = ListNode(4);
l1.next?.next = ListNode(3);

let l2:ListNode = ListNode(5);
l2.next = ListNode(6);
l2.next?.next = ListNode(4);

//let l1:ListNode = ListNode(1);
////l1.next = ListNode(8);
//let l2:ListNode = ListNode(9);
//l2.next = ListNode(9);

var node:ListNode? = solution.addTwoNumbers(l1, l2);

while (node != nil) {
    print("valeu = \(node!.val)");
    node = node?.next;
}
