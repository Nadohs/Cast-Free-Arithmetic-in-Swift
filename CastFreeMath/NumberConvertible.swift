

import CoreGraphics //For CGFloat


public typealias PreferredType = Double


public protocol NumberConvertible:Equatable,Comparable{
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


public protocol IntNumberConvertible : NumberConvertible {
    static var max: Self { get }
}



extension CGFloat{
    public  init(_ value: CGFloat){
        self.init(Double(value))
    }
}



extension NumberConvertible {
    
    
//    private func convert<T: NumberConvertible>() -> T {
//        let res:T = convertType()
//        return res;
//    }
 
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
        case let x as UInt8:
            return T(x)
        case let x as Int8:
            return T(x)
        case let x as UInt16:
            return T(x)
        case let x as Int16:
            return T(x)
        case let x as UInt32:
            return T(x)
        case let x as Int32:
            return T(x)
        case let x as UInt64:
            return T(x)
        case let x as Int64:
            return T(x)
        case let x as UInt:
            return T(x)
        default:
            assert(false, "NumberConvertible convert cast failed!")
            return T(0)
        }
    }
    
//    public var c:CGFloat{
//        get{ return convert() }
//    }
//    public var f:Float{
//        get{ return convert() }
//    }
//    public var d:Double{
//        get{ return convert() }
//    }
//    public  var i:Int{
//        get{ return convert() }
//    }
    
}


extension CGFloat : NumberConvertible {}
extension Double  : NumberConvertible {}
extension Int     : IntNumberConvertible {}
extension Float   : NumberConvertible {}
extension UInt8   : IntNumberConvertible {}
extension Int8    : IntNumberConvertible {}
extension UInt16  : IntNumberConvertible {}
extension Int16   : IntNumberConvertible {}
extension UInt32  : IntNumberConvertible {}
extension Int32   : IntNumberConvertible {}
extension UInt64  : IntNumberConvertible {}
extension Int64   : IntNumberConvertible {}
extension UInt    : IntNumberConvertible {}



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

enum OverflowIntTypes: IntNumberConvertible {
    case int(Int)
    case uint8(UInt8)
    case int8(Int8)
    case uint16(UInt16)
    case int16(Int16)
    case uint32(UInt32)
    case int32(Int32)
    case uint64(UInt64)
    case int64(Int64)
    case uint(UInt)
}

func checkForOverflow<T:IntNumberConvertible, U:NumberConvertible>(a:T, b:U) ->Bool {
    let max  :Double = T.max.convert()
    let test :Double = b.convert()
    
    if test > max{
        return false
        //assert(false, "Conversion Loss")
    }
    return true;
}


func ?= <T:IntNumberConvertible, U:NumberConvertible>(var lhs: T, rhs: U) -> T{
    print("INTNUMBER")
    
    let max  :Double = T.max.convert()
    let test :Double = rhs.convert()
    
    if test > max{
        assert(false, "Conversion Loss")
    }
    
        lhs = rhs.convert()
    let x:T = rhs.convert()
    return x;
}





//MARK:Equatable extension



public func == <T:NumberConvertible, U:NumberConvertible> (lhs: T, rhs: U) -> Bool{
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v == w;
}

public func != <T:NumberConvertible, U:NumberConvertible> (lhs: T, rhs: U) -> Bool{
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v != w;
}

public func >= <T:NumberConvertible, U:NumberConvertible> (lhs: T, rhs: U) -> Bool{
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v >= w;
}
public func > <T:NumberConvertible, U:NumberConvertible>  (lhs: T, rhs: U) -> Bool{
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v > w;
}
public func <= <T:NumberConvertible, U:NumberConvertible> (lhs: T, rhs: U) -> Bool{
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v <= w;
}
public func < <T:NumberConvertible, U:NumberConvertible>  (lhs: T, rhs: U) -> Bool{
    let v: PreferredType = lhs.convert()
    let w: PreferredType = rhs.convert()
    return v < w;
}


