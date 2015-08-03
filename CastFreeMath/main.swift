//
//  main.swift
//  CastFreeMath
//
//  Created by Richard Fox on 6/12/15.
//  Copyright © 2015 OpenSource. All rights reserved.
//


import CoreGraphics


let val1:CGFloat = 5.0
let val2:Double  = 3.0
let val3:Int     = 1
let val4:UInt32  = 5;

//qz is a Double
let qz = val4 + val2 + val1 + val3

//Single letter property conversion to Float, CGFloat, Double, Int

let num:Double   =  12;
let num2:Float   =  num.f;
let num3:CGFloat =  num.c;
let num4:Int     =  num.i;
let num5:Double  = num2.d;


let znum:Int = 5
let znum1:Double = 7.0;

//Default return type for mismatched number types in Double
let znum2:Double = znum + znum1 * znum + num5

//Cannot return to type other than Double by simply using = .
//let znum2:CGFloat = znum + znum1 * znum + num5


//var res:Int32 = 44;
//res ?= qz + Int(5) + CGFloat(55)

var totalA:Int = 0

//Use `?=` for assignment to already previously defined number types (non-Double)

totalA ?= val1 + val2 * val3

//For values not previously assigned use the `^^` operator
//(number with desired type) `^^` (arithmetic operation)

let totalB = Int() ^^ val1 + val2 * val3

print("totalA = \(totalA)")
print("totalB = \(totalB)")



//You can use Equatable and Comparable operations on mismatched number types also

if val1 == val4 {
    print("\(val1).\(val1.dynamicType) == \(val4).\(val4.dynamicType)")
}else {
    print("\(val1).\(val1.dynamicType) != \(val4).\(val4.dynamicType)")
}

if val3 != val4{
    print("\(val3).\(val3.dynamicType) != \(val4).\(val4.dynamicType)")
}

if val3 >= val4{
    print("\(val3).\(val3.dynamicType) >= \(val4).\(val4.dynamicType)")
}

if val3 > val4{
    print("\(val3).\(val3.dynamicType) > \(val4).\(val4.dynamicType)")
}

if val3 <= val4{
    print("\(val3).\(val3.dynamicType) <= \(val4).\(val4.dynamicType)")
}

if val3 < val4{
    print("\(val3).\(val3.dynamicType) < \(val4).\(val4.dynamicType)")
}





var resA:Int   = 0
var resB:Int64 = 0

//Our overloaded arithmetic operators do not have the same level of safety as what's in the standard library.  For instance the following line gives us an overflow compiler time error

//resA = Int(1000000000000000000) * Int(1000000000000000000)

// ?= and ^^ do not give such a warning and will instead


resA ?= Int(1000000000000000000) * Int64(1000000000000000000)


//Let's check if our arithmetic operation will overflow before assigning the value
//wouldOverflowResult( **number with expected result type**  , **arithmetic operation** ) -> Bool
//true = overflows, false = safe operation

//wouldOverflowResult currently only works for Integer result types

if wouldOverflowResult(Int(), Int(100000) * Int64(100000)){
    print("would overflow")
}else{
    resA ?= Int(100000) * Int64(100000)
}

if wouldOverflowResult(Int(), Int(1000000000000000000) * Int64(1000000000000000000)){
    print("would overflow")
}else{
    resA ?= Int(1000000000000000000) * Int64(1000000000000000000)
}


if wouldOverflowResult(Int(), Double.infinity){
    print("would overflow")
}else{
    resA ?= Double.infinity
}


print(resB)
print(resA)





