filtering
followAsStrings


	^ self follow collect: [ :f | f isString ifTrue: [ f ] ifFalse: [  f regExpr ] ]
	
	