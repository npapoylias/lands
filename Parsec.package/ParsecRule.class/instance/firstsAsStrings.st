filtering
firstsAsStrings


	^ self flattenFirsts collect: [ :f | f isEmptyOrEof ifTrue: [ f name ] ifFalse: [  f regExpr regExpr ] ]
	
	