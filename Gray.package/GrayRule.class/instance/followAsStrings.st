filtering
followAsStrings


	^ self follow collect: [ :f | f isEmptyOrEof ifTrue: [ f name ] ifFalse: [  f regExpr regExpr ] ]
	
	