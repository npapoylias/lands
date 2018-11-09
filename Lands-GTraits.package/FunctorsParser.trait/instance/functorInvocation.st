accessing
functorInvocation

	^ super functorInvocation ==> [ :values | 
		|expr|
		expr := values nodes.
		expr size > 1 "valueWithArguments is enough here actually.."
			ifTrue: [ { #valueWithArguments: . expr } ]
			ifFalse: [ 
				expr size = 0
					ifTrue: [ #value ]
					ifFalse: [ { #value: . expr first } ]
			]
	].