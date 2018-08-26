as yet unclassified
defaultViewFor: results
	^ (ParsecTree new 
			startingFrom: results
			withChildren: #childrenForestTraversingTemps 
			named: #rulePrettyName
			forest: #memoizedChildrenForestTraversingTempsAsSet
			size: #memoizedChildrenForestTraversingTempsSize
			popUp: [ :e | results input "you can show the action values also here, optimally per node"
				atAll: (e interval key + 1 to:  e interval value)]
			andEdges: #interval "this should be sent to the children for marking the interval"
			"thatRepeat: false") view.