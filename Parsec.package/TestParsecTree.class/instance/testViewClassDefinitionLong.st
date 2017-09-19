initialization
testViewClassDefinitionLong

	results := ExpressionEvaluator new parse: '(1*2+3/4)+(5*6+7/8)*(9*10+11/12)'.
	self assert: results trees size = 250.

	^ (ParsecTree new 
			startingFrom: results
			withChildren: #childrenForestTraversingTemps 
			named: #rulePrettyName
			popUp: [ :e | results input "you can show the action values also here, optimally per node"
				atAll: (e interval key + 1 to:  e interval value)]
			andEdges: #interval "this should be sent to the children for marking the interval"
			thatRepeat: false)  view
