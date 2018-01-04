# Q1 
- **checkIfBST** => function that accepts a single Node and return whether the tree uses given Node as root is BST or not.
- **checkIfBSTHelper** => helper function for *checkIfBST* that accepts a Node , maximum and minimum values for the lower level leaves for the tree that uses this Node as root

# Q2
- **detectCycle** => function that accepts a single Node and store every Node in the path of the linked list that uses given Node as head and check if it visits the same node twice
- **detectCycleEff** => function that uses Floyd's Cycle Detect Algorithm. It accepts a single Node and initialize 2 Node object. These two variable iterate through linked list at different speeds. If there is a cycle, they will eventually meet at some point and it would detect the cycle. If it reaches end of the list, we can say there isn't any cycle in this list.

Because Swift is not a language that I commonly use at all, probably I've made a lot of duplication or unnecessary actions code-wise. However, I'm still believe in that these are optimal solutions for this two questions.

Have a good day !
