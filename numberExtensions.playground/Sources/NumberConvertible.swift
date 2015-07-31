import Foundation


import CoreGraphics //For MAC

public typealias PreferredType = CGFloat


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
            print("bad")
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




extension Dictionary{
    
}


extension CGFloat : NumberConvertible {}
extension Double  : NumberConvertible {}
extension Int     : NumberConvertible {}
extension Float   : NumberConvertible {}



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



//
//infix operator := {}
//

infix operator ?= { associativity right precedence 90 }

//func +=<K, V> (inout left: Dictionary<K, V>, right: Dictionary<K, V>) -> Dictionary<K, V> {
//    
//    for (k, v) in right {
//        left.updateValue(v, forKey: k)
//    }
//    return left
//}

//UnsafeMutablePointer

func ?= <T:NumberConvertible, U:NumberConvertible> (inout lhs: T, rhs: U) -> T{
    lhs = rhs.convert()
    return lhs;
}

//func +=<T>(inout lhs: UnsafeMutablePointer<T>, rhs: Int)
//func +=<T>(inout lhs: UnsafePointer<T>, rhs: Int)



