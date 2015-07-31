private class ArrayImpl<T> {
    var space: Int
    var count: Int
    var ptr: UnsafeMutablePointer<T>
    
    init(count: Int = 0, ptr: UnsafeMutablePointer<T> = nil) {
        self.count = count
        self.space = count
        
        self.ptr = UnsafeMutablePointer<T>.alloc(count)
        self.ptr.initializeFrom(ptr, count: count)
    }
    
    func append(obj: T) {
        if space == count {
            let newSpace = max(space * 2, 16)
            let newPtr = UnsafeMutablePointer<T>.alloc(newSpace)
            
            newPtr.moveInitializeFrom(ptr, count: count)
            
            ptr.dealloc(count)
            ptr = newPtr
            space = newSpace
        }
        
        (ptr + count).initialize(obj)
        count++
    }
    
    func remove(index: Int) {
        (ptr + index).destroy()
        (ptr + index).moveInitializeFrom(ptr + index + 1, count: count - index - 1)
        count--
    }
    
    func copy() -> ArrayImpl<T> {
        return ArrayImpl<T>(count: count, ptr: ptr)
    }
    
    deinit {
        ptr.destroy(count)
        ptr.dealloc(count)
    }
 }
 
 public struct ArrayTest<T>: CustomStringConvertible, CollectionType {
    private var impl: ArrayImpl<T> = ArrayImpl<T>()
    
    private mutating func ensureUnique() {
        if !isUniquelyReferencedNonObjC(&impl) {
            impl = impl.copy()
        }
    }
    
    public mutating func append(value: T) {
        ensureUnique()
        impl.append(value)
    }
    
    public mutating func remove(index: Int) {
        ensureUnique()
        impl.remove(index)
    }
    
    public var count: Int {
        return impl.count
    }
    
    public subscript(index: Int) -> T {
        get {
            return impl.ptr[index]
        }
        mutating set {
            ensureUnique()
            impl.ptr[index] = newValue
        }
    }
    
    public var description: String {
        var str = ""
        for value in self {
            if !str.isEmpty {
                str += ", "
            }
            str += String(value)
        }
        return "(\(impl.ptr): " + str + ")"
    }
    
    public typealias Index = Int
    
    public var startIndex: Index {
        return 0
    }
    
    public var endIndex: Index {
        return count
    }
    
    public init() {
    }
 }