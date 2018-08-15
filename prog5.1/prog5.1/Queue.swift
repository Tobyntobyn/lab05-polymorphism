import Foundation

class Queue<T> : LinkedList<T> {
    //descr of queue
    override var description: String{
        return "(Queue)<--"+super.description+"<--"
    }
    
    override init(list: LinkedList<T>? = nil){
        super.init(list: list)
    }
    
    //Puts an object at the end of the queue
    func put(object: T){
        self.add(object: object);
    }
    
    //Gets an object from the start of the queue
    func get() -> T? {
        if let n = head {
            self.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}
