# NumberConvertible
Swift 2 easy number conversions optimized using protocol extensions

Thanks @matthewcheok for the help with this!

Also added overloaded operators to add numbers of multiple types without casting

If you do math with mismatched type the overloaded operators will infer CGFloat type.

 let num:Double   = 12;
 let num2:Float   = num.f;
 let num3:CGFloat = num.c;
 let num4:Int     = num.i;
 let num5:Double  = num2.d;


let znum2 = num + num1 + num

//znum2 infers to be CGFloat
