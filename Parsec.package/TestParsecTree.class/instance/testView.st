initialization
testView

	^ (ParsecTree new 
			startingFrom: results
			withChildren: #childrenForest 
			named: #ruleName
			andEdges: #interval "this should be sent to the children for marking the interval"
			thatRepeat: false) view open
