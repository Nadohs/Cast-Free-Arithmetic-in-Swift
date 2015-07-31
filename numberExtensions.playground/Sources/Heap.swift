public struct Heap<T: Comparable>: SequenceType, ArrayLiteralConvertible {
    private var array: Array<T> = []
    public typealias Index = Int
    
    // SequenceType
    public func generate() -> AnyGenerator<T> {
        var index = 0
        let cache = array
        
        return anyGenerator({ () -> T? in
            return index < cache.count ? cache[index++] : nil
        })
    }
    
    public func underestimateCount() -> Int { return array.count }
    
    // Private methods
    private func parentIndex(index: Index) -> Index {
        return (index-1)/2
    }
    
    private func leftIndex(index: Index) -> Index {
        return index*2+1
    }
    
    private func rightIndex(index: Index) -> Index {
        return index*2+2
    }
    
    private func indexIsRoot(index: Index) -> Bool {
        return index == 0
    }
    
    private func indexIsLeaf(index: Index) -> Bool {
        return leftIndex(index) >= array.count &&
            rightIndex(index) >= array.count
    }
    
    private func indexHasOneChild(index: Index) -> Bool {
        return rightIndex(index) == array.count
    }
    
    mutating private func downheapify(index: Index) {
        // if index is a leaf node, we're done
        if indexIsLeaf(index) {
            return
        }
            
            // node has one child, check invariance
        else if indexHasOneChild(index) {
            let child = leftIndex(index)
            if array[index] > array[child] {
                swap(&array[index], &array[child])
            }
        }
            
            // node has two children
        else {
            let left = leftIndex(index)
            let right = rightIndex(index)
            
            if min(array[left], array[right]) > array[index] {
                return
            }
            
            if array[left] < array[right] {
                swap(&array[index], &array[left])
                downheapify(left)
            }
            else {
                swap(&array[index], &array[right])
                downheapify(right)
            }
        }
    }
    
    mutating private func upheapify(index: Index) {
        if index >= 0 {
            let parent = parentIndex(index)
            if array[parent] > array[index] {
                swap(&array[parent], &array[index])
                upheapify(parent)
            }
        }
    }
    
    // Public API
    
    public var minimum: T? {
        return array.first
    }
    
    mutating public func push(item: T) {
        array.append(item)
        upheapify(array.count-1)
    }
    
    mutating public func pop() -> T? {
        guard let item = array.first else {
            return nil
        }
        guard let last = array.last else {
            return nil
        }
        
        array[0] = last
        array.removeLast()
        downheapify(0)
        
        return item
    }
    
    // Initializers
    
    public init() {}
    
    public init(arrayLiteral elements: T...) {
        self.init()
        for item in elements {
            push(item)
        }
    }
    
    public init<S : SequenceType where S.Generator.Element == T>(_ sequence: S) {
        self.init()
        for item in sequence {
            push(item)
        }
    }
}
