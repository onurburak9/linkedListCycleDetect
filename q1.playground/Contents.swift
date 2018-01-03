//: Playground - noun: a place where people can play

import UIKit

//Node definition
class Node{
    let value : Int;
    var leftChild : Node?;
    var rightChild : Node?;
    
    init(value : Int) {
        self.value = value;
        self.leftChild = nil;
        self.rightChild = nil;
    }
}
//Binary Search Tree check function
func checkIfBST(Node: Node?) -> Bool{
    return checkIfBSTHelper(Node: Node, Max: Int.max, Min: Int.min)
}
//Helper class for isBST function to check if child leaves have child nodes that have values bigger than maximum allowed value or smaller than minimum allowed in given child tree
func checkIfBSTHelper(Node: Node?,Max:Int,Min:Int)->Bool{
    let root = Node;
    //Check if given Node is empty
    if root == nil{
        return true;
    }else{
        //If not check for the comparison between parent value and its leaves
        let value = root!.value
        
        let leftChild:Node? = root!.leftChild;
        let rightChild:Node? = root!.rightChild;
        if leftChild != nil{
            
            let leftValue = leftChild?.value
            if value <= leftValue! || leftValue! <= Min{
                return false
            }
        }
        if rightChild != nil{
            let rightValue = rightChild?.value
            if value >= rightValue! || rightValue! >= Max{
                return false
            }
        }
        
        return checkIfBSTHelper(Node: leftChild, Max: value, Min: Int.min) && checkIfBSTHelper(Node: rightChild, Max: Int.max, Min: value)
    }
}

//Example code to show isBST function works well as requested
var node = Node(value:10)
var lNode = Node(value:5)
var rNode = Node(value:15)

checkIfBST(Node: node)

lNode.rightChild = rNode
node.leftChild = lNode

checkIfBST(Node: node)
