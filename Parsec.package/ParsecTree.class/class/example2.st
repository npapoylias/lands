example
example2

	"consider adding selectors that describe the relationships ie
	give {nodes} with: #edgeSelector to: #childSelector; edgeLabel: #edgeLabelSelector; nodeLabel: #nodeLabelSelector 
	and parametrize the lable as well"

	| result root |
	result := ParsecExprGrammar new 
		parse: '2*3+4/1' using: ParsecMixedOrderAlgo new log.
	root := result charts last detect: [ :state | state isFinal ].
	"children := root perform: #childrenStates.
	edges := root perform: #childrenPositions."

	
	^ (ParsecTree new 
		withRootElement: root 
		childSelector: #childrenStates 
		edgeSelector: #childrenWithPositions;
		view) open