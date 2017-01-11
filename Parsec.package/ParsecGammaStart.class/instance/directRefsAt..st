accessing
directRefsAt: anIndex

	^ directRefs ifNil: [ directRefs := (rightHandSide at: anIndex) collect: [ :symbol | grammar at: symbol ]]
	