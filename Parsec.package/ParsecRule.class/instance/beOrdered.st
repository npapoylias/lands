actions
beOrdered
	
	ordered 
		ifTrue: [ ^ self ]
		ifFalse: [ 
			ordered := true.
			"childRules do: [ :child | child beOrdered ]"
		]
	
	