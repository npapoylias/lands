visual-nodes
visualElementFor: n
	"| shape label node labelText |
	shape := RTCompositeShape new.
	labelText := self labelForElement: n.
	node := RTEllipse new
		size: (self sizeForElement: n);
		color: (self colorFor: labelText).
	label := RTLabel new
		text: labelText;
		color: Color black;
		height: 28.
	^ shape
		add: node;
		add: label;
		elementOn: n"
	| nEl node |
	nEl := (elements at: n). 
	node :=  
		nEl size == 1
			ifTrue: [ self simpleNodeOn: nEl first]
			ifFalse: [ "self visualElementFor: nEl second" "embeding is recursive el at: n has max 2"self embededNodesOn: nEl ].
	^ n memoizedChildrenForestTraversingTempsSize > 1 
		ifTrue: [ self forestNodesOn: node index: (self forestIndexFor: n) of: n memoizedChildrenForestTraversingTempsSize ]
		ifFalse: [ node ]
	
 
	