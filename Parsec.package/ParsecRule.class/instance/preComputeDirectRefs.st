accessing
preComputeDirectRefs
	
	directRefs := Array new: rightHandSide size.
	1 to: rightHandSide size do: [ :i | 
		directRefs 
					at: i 
					put: ((rightHandSide at: i) collect: [ :symbol | symbol isString ifTrue: [ grammar at: symbol ] ifFalse: [ symbol ] ]) ]. 
	"directRefs := directRefs values asOrderedCollection asArray."
	
