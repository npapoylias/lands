initialization
testViewClassDefinition

	results := ExpressionEvaluator new parse: '1+2+3'.
	self assert: results trees size = 2.
	self assert: results results first value = 6.
	self assert: results results second value = 6.

	^ (ParsecTree new 
			startingFrom: results
			withChildren: #childrenForestTraversingTemps 
			named: #rulePrettyName
			popUp: [ :e | results input "you can show the action values also here, optimally per node"
				atAll: (e interval key + 1 to:  e interval value)]
			andEdges: #interval "this should be sent to the children for marking the interval"
			thatRepeat: false)  view
