as yet unclassified
defaultViewFor: results
	^ (ParsecTree new 
			startingFrom: results
			withChildren: #childrenForest 
			named: #rulePrettyName
			forest: #childrenForest
			size: #childrenForestSize
			popUp: [ :e | results input "you can show the action values also here, optimally per node"
				atAll: (e interval key + 1 to:  e interval value)]
			andEdges: #interval "this should be sent to the children for marking the interval"
			"thatRepeat: false") view.