//: Playground - noun: a place where people can play

import Foundation

import CoreGraphics

 let num:Double   = 12;
 let num2:Float   = num.f;
 let num3:CGFloat = num.c;
 let num4:Int     = num.i;
 let num5:Double  = num2.d;


let znum:Int = 5
let znum1:Double = 7.0;

let znum2:CGFloat = znum + znum1 * znum + num5 / num

let val1:CGFloat = 5.0
let val2:Double  = 3.0
let val3:Int     = 1



//infix operator ::: { associativity left precedence 140 }


//let total = CGFloat(val1) + CGFloat(val2) * CGFloat(val3)
//let total2:CGFloat = val1 + val2 * val3


//let total3: = val1 + val2 * val3


//var type:CGFloat ?= Double(1.1)


let n = 4;
Mirror(reflecting: n).subjectType;
let type = Mirror(reflecting: n).subjectType;
typealias thing = Int.Type
//Mirror(reflecting: self)


extension DictionaryLiteralConvertible where Key == String, Value == AnyObject  {
    func magicFilter(){
        print("blah")
    }
}

let test1 = [String : AnyObject]()
test1.magicFilter()
let test2 = [String : String]()
//test2.magicFilter()

var test3 = NSDictionary()




extension CollectionType where Generator.Element == Optional<String> {
    func filterNils() -> [AnyObject] {
//        self.generate()
        return self.filter { $0 != nil }.map { $0! }
        
    }
}

public protocol JSONArchive:DictionaryLiteralConvertible {
    typealias Key = String
    typealias Value = AnyObject
    
}

extension JSONArchive where Self: DictionaryLiteralConvertible, Key == String, Value == AnyObject {
    extension self : DictionaryLiteralConvertible {}
    func testzz(){
        print("what")
    }
}

//var testq = JSONArchive()
//
//testq.testzz()


extension NSDictionary{
    typealias Key = String
    typealias Value = AnyObject//Generator.Element
    
}

var tewst = [String?]()

let res = tewst.filterNils()

public typealias jx = [String: String]


public let type1 = Mirror(reflecting: jx())

public let typez = type1.displayStyle

extension CollectionType {// where Generator.Element : _BuildinInteg {
    func printz(){
        print("test")
    }
}

Dictionary<Int,Int>.printz



//print(type)



