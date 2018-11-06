as yet unclassified
param: parameters args: arguments outer: outerEnvironment

	|instance|

	instance := self new.
	parameters 
		doWithIndex: [:param :index | instance define: param as: (arguments at: index) ].
	instance outer: outerEnvironment.
	^ instance