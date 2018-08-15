class Array<T>: SortableList<T> {
    
    
    private var _count: Int    // Stored property that counts elements in the array

    // COMPUTED PROPERTIES
    
    /**
     Computed property that returns the number of elements in the array - overrides
     LinkedList property to return stored _count property rather than traversing
     the list and coutning the elements.
     
     - returns: Int Number of items in the array
     */
    override var count: Int {
        return self._count
    }
    
    // INITIALISERS
    
    /**
     Designated initialiser for Array - overrides LinkedList initialiser
     in order to initialise the _count stored property
     
     - parameter list: LinkedList to initialise array with (nil by default)
     */
    override init(list: LinkedList<T>? = nil) {
        self._count = 0
        super.init(list: list)
    }
    // METHODS
    
    /**
     Adds an object to the array - overrrides LinkedList method
     in order to increment the _count variable when new object
     is added.
     
     - parameter object: Object to add to the list
     */
    override func add(object: T) {
        super.add(object: object)
        self._count += 1
    }
    
    /**
     Removes a node from the array - overrideds LinkedList method
     in order to decrement the _count variable when an node (and object)
     is removed form the list
     
     - parameter node: Node to remove from the list
     - returns: Bool True if node found in the list and removed,
     false otherwise.
     */
    override func remove(node: Node<T>) -> Bool {
        let nodeRemoved: Bool = super.remove(node: node)
        if nodeRemoved {
            self._count -= 1
        }
        return nodeRemoved
    }
    
    func get(index: Int) -> T {
        assert(index < count && index >= 0, "Index out of bounds")
        return (getNodeAtIndex(index: index)?.object)!
    }
    
    func set(object: T, at: Int) {
        assert(at < count && at >= 0, "Index out of bounds")
        let temp: Node = getNodeAtIndex(index: at)!
        temp.object = object
    }
    
    /**
     Method for indexed square bracket notation that
     wraps the getObject and setObject methods
     
     - parameter index: Index of the item in the array
     */
    subscript(index: Int) -> T {
        get {
            return self.get(index: index)
        }
        set(newObject) {
            self.set(object: newObject, at: index)
        }
    }
}
