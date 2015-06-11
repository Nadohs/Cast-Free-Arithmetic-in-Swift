//: Playground - noun: a place where people can play

import CoreGraphics

 let num:Double   = 12;
 let num2:Float   = num.f;
 let num3:CGFloat = num.c;
 let num4:Int     = num.i;
 let num5:Double  = num2.d;


let znum:Int = 5
let znum1:Double = 7.0;


public func -<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> CGFloat{
    return lhs.f - rhs.f;
}

public func +<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> CGFloat{
    return lhs.f - rhs.f;
}


let znum2:CGFloat = znum + znum1