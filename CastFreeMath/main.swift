//
//  main.swift
//  CastFreeMath
//
//  Created by Richard Fox on 6/12/15.
//  Copyright © 2015 OpenSource. All rights reserved.
//


import CoreGraphics

let num:Double   = 12;
let num2:Float   = num.f;
let num3:CGFloat = num.c;
let num4:Int     = num.i;
let num5:Double  = num2.d;


let znum:Int = 5
let znum1:Double = 7.0;

let znum2:Double = znum + znum1 * znum + num5

let val1:CGFloat = 5.0
let val2:Double  = 3.0
let val3:Int     = 1
let val4:UInt32  = 5;

let qz = val4 + val2 + val1 + val3

var res:Int32 = 44;

res ?= qz + 5.i + 55.c



//infix operator ::: { associativity left precedence 140 }


  

//let total = CGFloat(val1) + CGFloat(val2) * CGFloat(val3)
//let total2:CGFloat = val1 + val2 * val3


//let total3: = val1 + val2 * val3
//

var type:CGFloat = 0;

type ?= Double(1.1)

var znum3:CGFloat = 0;

znum3 ?= znum + znum1 * znum + num5

print(type)




