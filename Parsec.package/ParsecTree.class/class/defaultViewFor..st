as yet unclassified
defaultViewFor: results
	^ (ParsecTree new
		startingFrom: results
		withChildren: #childrenForestTraversingTemps
		named: #rulePrettyName
		forest: #memoizedChildrenForestTraversingTemps 
		popUp: 	[ :e | results input atAll: (e interval key + 1 to: e interval value)	"you can show the action values also here, optimally per node" ]
		andEdges: #interval) view	"this should be sent to the children for marking the interval"