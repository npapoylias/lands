generated
variable

	^ super variable ==> [ :token |  
			RBVariableNode 
				identifierNamed: token string 
				at: token start
	]