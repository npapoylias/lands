as yet unclassified
dynamicBlock

	^ [ Var @ #x perform: #at:put: withArguments: { #y . 3 } asValues. Var @ #x ]