example
example2

	"consider adding selectors that describe the relationships ie
	give {nodes} with: #edgeSelector to: #childSelector; edgeLabel: #edgeLabelSelector; nodeLabel: #nodeLabelSelector 
	and parametrize the lable as well"

	| result root |
	result := MOGExprGrammar new 
		"should be 250" "parse: '(1*2+3/4)+(5*6+7/8)*(9*10+11/12)' using: GrayMixedOrderAlgo new log."
		parse: '1*2+3/4' using: GrayMixedOrderedFilteredAlgo new log.
	"children := root perform: #childrenStates.
	edges := root perform: #childrenPositions."

	"this is a single multi-tree for the moment should split in a proper forest
	using children forest"
	
	^ (GrayFancyTree new 
		withRootElement: result charts successfullRoot 
		childSelector: #childrenStatesValues
		edgeSelector: #childrenWithPositions;
		view) open