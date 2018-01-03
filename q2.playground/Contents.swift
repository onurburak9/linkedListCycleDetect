//: Playground - noun: a place where people can playy

import UIKit

//Node definition
class Node: Equatable {
    let value : Int;
    var next : Node?;
    
    init(value : Int) {
        self.value = value;
        self.next = nil
    }
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.value == rhs.value && lhs.next == rhs.next
    }
}
//Function to detect
func detectCycle(Node:Node?)->Bool{
    var arrayOfNodes:[Node] = [];
    var currentNode = Node;
    
    while currentNode != nil {
        if arrayOfNodes.contains(currentNode!) {
            return true
        }else{
            arrayOfNodes.append(currentNode!)
        }
        currentNode = currentNode!.next
    }
    return false
}

var node = Node(value : 10)
var secondNode = Node(value: 5)
var thirdNode = Node(value: 15)

node.next = secondNode
secondNode.next = node



detectCycle(Node: node)
