# Cast-Free Arithmetic in Swift

**Requires: Swift 2.0+** 

With *Cast-Free Arithmetic in Swift* you no longer need to cast to do arithmetic operations on mismatched number types.

###Single Letter Casting 
Single letter property conversion to Float, CGFloat, Double, Int
```
let num:Double   =  12;
let num2:Float   =  num.f;
let num3:CGFloat =  num.c;
let num4:Int     =  num.i;
let num5:Double  = num2.d;


let znum:Int = 5 
let znum1:Double = 7.0;
```
###Cast-less Arithmetic!
Default return type for mismatched number types in Double
```
let znum2 = znum + znum1 * znum + num5 
```
or
```
let znum3:Double = 5.i + 5.5.f * 2.i / 5.5.c 
```

We can now also return to types other than Double automatically

```
let znum2:CGFloat = znum + znum1 * znum + num5
```

###Cast-less Arithmetic Compiler Complaints 


Add `+ 0` if compiler has warning on exactly two operators

```
let totalA:val1 + val2 * val3 + 0
```


###Equatable and Comparable Operators

You can use Equatable and Comparable operations on mismatched number types also

```
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

`````
