filtering
firstsAsStrings


	^ self flattenFirsts collect: [ :f | f isString ifTrue: [ f ] ifFalse: [  f regExpr ] ]
	
	