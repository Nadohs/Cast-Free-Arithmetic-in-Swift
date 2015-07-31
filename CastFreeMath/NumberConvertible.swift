

import CoreGraphics //For MAC and iOS usage


public typealias PreferredType = Double


public protocol NumberConvertible{
    init(_ value: Int)
    init(_ value: Float)
    init(_ value: Double)
    init(_ value: CGFloat)
    init(_ value: UInt8)
    init(_ value: Int8)
    init(_ value: UInt16)
    init(_ value: Int16)
    init(_ value: UInt32)
    init(_ value: Int32)
    init(_ value: UInt64)
    init(_ value: Int64)
    init(_ value: UInt)
}




extension CGFloat{
    public  init(_ value: CGFloat){
        self.init(Double(value))
    }
}



extension NumberConvertible {
 
    private func convert<T: NumberConvertible>() -> T {
        switch self {
        case let x as CGFloat:
            return T(x)
        case let x as Float:
            return T(x)
        case let x as Int:
            return T(x)
        case let x as Double:
            return T(x)
        default:
            assert(false, "NumberConvertible convert cast failed!")
            return T(0)
        }
    }
    
    
    public var c:CGFloat{
        get{
            return convert()
        }
    }
    public var f:Float{
        get{
            return convert()
        }
    }
    public var d:Double{
        get{
            return convert()
        }
    }
    public  var i:Int{
        get{
            return convert()
        }
    }
}


extension CGFloat : NumberConvertible {}
extension Double  : NumberConvertible {}
extension Int     : NumberConvertible {}
extension Float   : NumberConvertible {}
extension UInt8   : NumberConvertible {}
extension Int8    : NumberConvertible {}
extension UInt16  : NumberConvertible {}
extension Int16   : NumberConvertible {}
extension UInt32  : NumberConvertible {}
extension Int32   : NumberConvertible {}
extension UInt64  : NumberConvertible {}
extension Int64   : NumberConvertible {}
extension UInt    : NumberConvertible {}



public func + <T:NumberConvertible, U:NumberConvertible>(lhs: T, rhs: U) -> PreferredType {
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v+w
}

public func - <T:NumberConvertible, U:NumberConvertible>(lhs: T, rhs: U) -> PreferredType {
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v-w
}

public func / <T:NumberConvertible, U:NumberConvertible>(lhs: T, rhs: U) -> PreferredType {
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v/w
}

public func * <T:NumberConvertible, U:NumberConvertible>(lhs: T, rhs: U) -> PreferredType {
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v*w
}

public func % <T:NumberConvertible, U:NumberConvertible>(lhs: T, rhs: U) -> PreferredType {
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v%w
}




infix operator ?= { associativity right precedence  90 assignment} // 1




func ?= <T:NumberConvertible, U:NumberConvertible>(var lhs: T, rhs: U) -> T{

    lhs = rhs.convert()
    let x:T = rhs.convert()
    return x;
}


