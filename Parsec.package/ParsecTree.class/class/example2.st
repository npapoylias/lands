example
example2

	"consider adding selectors that describe the relationships ie
	give {nodes} with: #edgeSelector to: #childSelector; edgeLabel: #edgeLabelSelector; nodeLabel: #nodeLabelSelector 
	and parametrize the lable as well"

	| result root |
	result := ParsecExprGrammar new 
		"should be 250" "parse: '(1*2+3/4)+(5*6+7/8)*(9*10+11/12)' using: ParsecMixedOrderAlgo new log."
		parse: '1*2+3/4' using: ParsecMixedOrderAlgo new log.
	"children := root perform: #childrenStates.
	edges := root perform: #childrenPositions."

	
	^ (ParsecTree new 
		withRootElement: result value 
		childSelector: #childrenStates 
		edgeSelector: #childrenWithPositions;
		view) open