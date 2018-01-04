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
        return lhs.value == rhs.value
    }
}
//Function to detect cycle by storing the path in an array and check if it visits the same node twice
func detectCycle(Node:Node?)->Bool{
    var arrayOfNodes:[Node] = [];
    var currentNode = Node;
    
    while currentNode != nil {
        for nodes in arrayOfNodes{
            if nodes === currentNode {
                return true
            }
        }
        arrayOfNodes.append(currentNode!)
        currentNode = currentNode!.next
    }
    return false
}
//Function to detect cycle by 2 iterator whose iteration speed is different
func detectCycleEff(Node:Node?)->Bool{
    var iteratorSlow = Node;
    var iteratorFast = Node;
    
    while iteratorFast != nil && iteratorFast!.next != nil{
        iteratorSlow = iteratorSlow!.next
        iteratorFast = iteratorFast!.next!.next
        
        if(iteratorFast === iteratorSlow){
            return true
        }
    }
    return false
}
//Testing
var node = Node(value : 10)
var secondNode = Node(value: 5)
var thirdNode = Node(value: 15)

node.next = secondNode
secondNode.next = thirdNode
thirdNode.next = node

detectCycle(Node: node)
detectCycleEff(Node: node)
