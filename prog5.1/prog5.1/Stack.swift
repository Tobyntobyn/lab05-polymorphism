import Foundation

class Stack<T> : LinkedList<T> {
    //descr of stack
    override var description: String{
        return "(Stack)<--"+super.description+"<--"
    }
    
    //Puts an object at the end of the queue
    func push(object: T){
        self.add(object: object);
    }
    
    //Gets an object from the start of the queue
    func pop() -> T? {
        if let n = tail {
            self.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}
