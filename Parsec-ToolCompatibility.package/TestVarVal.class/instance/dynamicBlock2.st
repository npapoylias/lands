as yet unclassified
dynamicBlock2

	^ [ #x asValue perform: #at:put: withArguments: { #y . 3 } asValues. #x asValue ]