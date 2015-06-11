import Foundation


import CoreGraphics //For MAC


public protocol NumberConvertible{
    init(_ value: Int)
    init(_ value: Float)
    init(_ value: Double)
    init(_ value: CGFloat)
    
    
    var c:CGFloat{ get }
    var f:Float{ get }
    var d:Double{ get }
    var i:Int { get }
}


extension CGFloat{
   public  init(_ value: CGFloat){
        self.init(value)
    }
    
}




extension NumberConvertible {
    
    private func convert<T: NumberConvertible>(x: Self) -> T {
        switch x {
        case let x as CGFloat:
            return T(x)
        case let x as Float:
            return T(x)
        case let x as Int:
            return T(x)
        case let x as Double:
            return T(x)
        default:
            return T(0)
        }
    }
    
    
    public var c:CGFloat{
        get{
            return convert(self)
        }
        
    }
    public var f:Float{
        get{
            return convert(self)
        }
    }
    public var d:Double{
        get{
            return convert(self)
        }
    }
    public  var i:Int{
        get{
            return convert(self)
        }
    }
}


extension CGFloat : NumberConvertible {}
extension Double  : NumberConvertible {}
extension Int     : NumberConvertible {}
extension Float   : NumberConvertible {}



///CGFloat

public func -<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> CGFloat{
    return lhs.c - rhs.c;
}

public func +<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> CGFloat{
    return lhs.c + rhs.c;
}
public func *<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> CGFloat{
    return lhs.c * rhs.c;
}

public func /<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> CGFloat{
    return lhs.c * rhs.c;
}

public func %<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> CGFloat{
    return lhs.c % rhs.c;
}


///Float

public func -<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Float{
    return lhs.f - rhs.f;
}

public func +<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Float{
    return lhs.f + rhs.f;
}
public func *<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Float{
    return lhs.f * rhs.f;
}

public func /<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Float{
    return lhs.f * rhs.f;
}

public func %<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Float{
    return lhs.f % rhs.f;
}

///Double

public func -<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Double{
    return lhs.d - rhs.d;
}

public func +<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Double{
    return lhs.d + rhs.d;
}
public func *<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Double{
    return lhs.d * rhs.d;
}

public func /<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Double{
    return lhs.d * rhs.d;
}

public func %<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Double{
    return lhs.d % rhs.d;
}

///Int

public func -<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Int{
    return lhs.i - rhs.c;
}

public func +<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Int{
    return lhs.i + rhs.i;
}
public func *<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Int{
    return lhs.i * rhs.i;
}

public func /<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Int{
    return lhs.i * rhs.i;
}

public func %<T:NumberConvertible,U:NumberConvertible>(lhs: T, rhs: U) -> Int{
    return lhs.i % rhs.i;
}
