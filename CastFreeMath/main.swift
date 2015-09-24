import CoreGraphics


/*:
# Cast-Free Math

**Requires: Swift 2.0+**

With Cast-Free Math you no longer need to cast to do arithmetic operations on mismatched number types.
Although, removing the need for casting between number types removes some [type safety](https://realm.io/news/altconf-justin-spahr-summers-type-safety/ "Correct Behavior Through Type Safety") benefits.

###Single Letter Casting
Single letter property conversion to Float, CGFloat, Double, Int
*/




extension NumberConvertible {
    
//    deinit{
//        
//    }
    
}

var w:Double  = 1
var x:Int     = 5
var y:CGFloat = 10
var z:Float   = 15

let m:Float  = y + x + w + 0
let n:Int    = y + z + x

let num:Double   =  12.5;
let num2:Float   =  12;
let num3:CGFloat =  12;
let num4:Int     =  12;
let num5:Double  =  12;

let znum0:Float    =  num2 + num3 + num2 + num4 + num.f + 0
let znum01:CGFloat =  num2 + num2 + num3 + num2 + num4 + num
let znum02:Double  =  num2 + num2 + num3 + num2 + num4 + num
let znum03:Int     =  num2 + num2 + num3 + num2 + num4 + num
let znum04:Int     =  num2 + num2 + num3 + num2 + num4
let znum05:Int     =  num2 + num2 + num3 + num2
let znum06:Int     =  num2 + num2 + num3
let znum07:Int     =  num2 + num3 + num2 + 0

print("znum0 = \(znum0)")
print("znum1 = \(znum01)")
print("znum2 = \(znum02)")
print("znum3 = \(znum03)")

let znum:Int = 5
let znum1:Double = 7.0;

/*:
###Cast-less Arithmetic!
Default return type for mismatched number types in Double
*/

let znum2:Double = znum + znum1 * znum + num5
let znum3:Double = 5.i + 5.5.f * 2.i / 5.5.c


/*:
Cannot return to type other than Double by simply using = .
*/
//let znum2:CGFloat = znum + znum1 * znum + num5

/*:
#Cast-less Arithmetic Assigment to Non-Double
*/


let val1:CGFloat = 5.0
let val2:Double  = 3.0
let val3:Int     = 1
let val4:UInt32  = 5;
var totalA:Int = 0

/*:

Use `?=` for assignment to already previously defined number types (non-Double)

*/

//totalA ?= val1 + val2 * val3

/*:
For values not previously assigned use the `^^` operator

(number with desired type) `^^` (arithmetic operation)

*/

//let totalB = Int() ^^ val1 + val2 * val3

/*:
###Equatable and Comparable Operators

You can use Equatable and Comparable operations on mismatched number types also

*/




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

/*:

###Overloading

*/
var resA:Int   = 0
var resB:Int64 = 0
/*:

Our arithmetic operations do not have the same level of safety as what's in the standard library.  For instance the following line gives us an overflow compiler time error

*/
//resA = Int(1000000000000000000) * Int(1000000000000000000)
/*:

While `?=` and `^^` do not give such a warning and will instead throw an exception runtime

*/

//resA ?= Int(1000000000000000000) * Int64(1000000000000000000)
/*:

Let's check if our arithmetic operation will overflow before assigning the value

wouldOverflowResult( **number with expected result type**  , **arithmetic operation** ) -> Bool

`true` = overflows, `false` = safe operation

*/

//if wouldOverflowResult(Int(), Int(100000) * Int64(100000)){
//    print("would overflow")
//}else{
//    resA ?= Int(100000) * Int64(100000)
//}
///*:
//NOTE: `wouldOverflowResult` currently only works for Integer result types
//
//*/
//if wouldOverflowResult(Int(), Int(1000000000000000000) * Int64(1000000000000000000)){
//    print("would overflow")
//}else{
//    resA ?= Int(1000000000000000000) * Int64(1000000000000000000)
//}


//if wouldOverflowResult(Int(), Double.infinity){
//    print("would overflow")
//}else{
//    resA ?= Double.infinity
//}
//
//
