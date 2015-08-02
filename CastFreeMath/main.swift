//
//  main.swift
//  CastFreeMath
//
//  Created by Richard Fox on 6/12/15.
//  Copyright © 2015 OpenSource. All rights reserved.
//


import CoreGraphics

let num:Double   = 12;
let num2:Float   = 12//num.f;
let num3:CGFloat = 12//num.c;
let num4:Int     = 12//num.i;
let num5:Double  = 12//num2.d;


let znum:Int = 5
let znum1:Double = 7.0;

let znum2:Double = znum + znum1 * znum + num5

let val1:CGFloat = 5.0
let val2:Double  = 3.0
let val3:Int     = 1
let val4:UInt32  = 5;

let qz = val4 + val2 + val1 + val3

var res:Int32 = 44;

res ?= qz + Int(5) + CGFloat(55)



//infix operator ::: { associativity left precedence 140 }

if val1 == val4 {
    print("==\(val1).\(val1.dynamicType)")
}else {
    print("!=\(val1).\(val1.dynamicType)")
}

if val3 != val4{
    print("!=\(val3).\(val3.dynamicType)")
}

if val3 >= val4{
    print(">=\(val3).\(val3.dynamicType)")
}

if val3 > val4{
    print(">\(val3).\(val3.dynamicType)")
}

if val3 <= val4{
    print("<=\(val3).\(val3.dynamicType)")
}

if val3 < val4{
    print("<\(val3).\(val3.dynamicType)")
}

//let total = CGFloat(val1) + CGFloat(val2) * CGFloat(val3)
//let total2:CGFloat = val1 + val2 * val3


//let total3: = val1 + val2 * val3
//

var type:CGFloat = 0;

type ?= Double(1.1)

var znum3:CGFloat = 0;

znum3 ?= znum + znum1 * znum + num5

let res3 = Int(1000000) + Double(2.0)
let res4 = Int(10000000000) + Double(2.0)
var res55:Int64 = 0
//res55 = Int64(1000000000000000000) * Int64(1000000000000000000)
let res555:Int = 0
if !checkForOverflow(Int(), b: Int(100000) * Int64(100000)){
    print("will overflow")
}
if !checkForOverflow(Int(), b: Int(1000000000000000000) * Int64(1000000000000000000)){
    print("will overflow")
}

//res555 ?= Int(100000) * Int64(100000)
//res555 ?= Int(1000000000000000000) * Int64(1000000000000000000)

res555 ?= Double.infinity
print(res55)
print(res555)
print("res5 type = \(res55.dynamicType)\n1000000000000000000")

print(type)




